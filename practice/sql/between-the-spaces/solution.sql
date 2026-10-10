select msg_id,
len(content) - len(replace(content, ' ', '')) + 1 as word_count
from chat_msgs
