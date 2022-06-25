package §9!!§
{
   public class LuaUtils
   {
       
      
      public function LuaUtils()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §=!;§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
               loop1:
               while(true)
               {
                  param1 = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().replace(/\-\-.*/g,""));
                        loop4:
                        while(true)
                        {
                           param1 = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop().replace(/\[\"(.*)\"\]/g,"$1"));
                                 loop7:
                                 for(; !_loc4_; while(!(_loc4_ && param1))
                                 {
                                    param1 = §§pop();
                                    §§goto(addr207);
                                 })
                                 {
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr191:
                                       addr207:
                                       while(true)
                                       {
                                          §§push(§§pop().replace(/^\s*\}\s*$/mg,"},"));
                                          continue loop7;
                                       }
                                       while(!(_loc4_ && param1))
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(param1);
                                          loop12:
                                          while(_loc3_)
                                          {
                                             §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                addr188:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr147:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":"));
                                                      addr155:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr134:
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop7;
                                                }
                                                param1 = §§pop();
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   while(_loc3_)
                                                   {
                                                      continue loop0;
                                                      addr42:
                                                      if(!(_loc4_ && LuaUtils))
                                                      {
                                                         param1 = §§pop();
                                                         if(_loc3_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr172:
                                                         loop22:
                                                         while(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§0S§(param1,param2));
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           param1 = §§pop();
                                                                           continue loop22;
                                                                        }
                                                                        addr127:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              §§goto(addr134);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr155);
                                                                           }
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr147);
                                                                     addr93:
                                                                  }
                                                               }
                                                               §§goto(addr42);
                                                            }
                                                            return JSON.parse(param1);
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            §§push("{");
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               §§push(§§pop() + param1);
                                                               if(!_loc4_)
                                                               {
                                                                  addr114:
                                                                  §§push(§§pop() + "}");
                                                               }
                                                               §§goto(addr127);
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          §§goto(addr191);
                                          if(_loc4_ && param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr73);
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private static function §0S§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc3_:String = "{";
         var _loc4_:String = "}";
         var _loc5_:String = "[";
         var _loc6_:String = "]";
         var _loc7_:String = ":";
         var _loc8_:Vector.<int> = new Vector.<int>();
         var _loc9_:Vector.<int> = new Vector.<int>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc11_:* = int(param1.indexOf(_loc3_));
         §§push(_loc11_);
         if(!(_loc20_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc11_);
            if(!(_loc20_ && _loc3_))
            {
               if(!_loc20_)
               {
                  if(!(_loc20_ && param2))
                  {
                     §§push(0);
                     if(_loc21_ || LuaUtils)
                     {
                        if(_loc21_ || LuaUtils)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc21_)
                           {
                              if(!_loc20_)
                              {
                                 if(_loc21_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc21_)
                                    {
                                       if(!_loc20_)
                                       {
                                          if(!_loc20_)
                                          {
                                             if(!_loc20_)
                                             {
                                                §§push(§§pop());
                                                if(_loc21_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc20_)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(_loc21_ || LuaUtils)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               addr158:
                                                               if(!_loc20_)
                                                               {
                                                                  if(_loc21_ || param2)
                                                                  {
                                                                     if(_loc21_ || param2)
                                                                     {
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc21_ || param2)
                                                                           {
                                                                              if(_loc21_)
                                                                              {
                                                                                 if(_loc21_ || LuaUtils)
                                                                                 {
                                                                                    if(!(_loc20_ && param2))
                                                                                    {
                                                                                       if(_loc21_ || param2)
                                                                                       {
                                                                                          if(!(_loc20_ && _loc3_))
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(_loc13_);
                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      addr694:
                                                                                                      loop80:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() >= §§pop());
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            loop54:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               addr698:
                                                                                                               addr699:
                                                                                                               loop1:
                                                                                                               while(§§pop())
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     addr671:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() >= §§pop());
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           addr673:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc21_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              loop24:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop25:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          addr651:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                continue loop80;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(int(_loc8_.pop()));
                                                                                                                                                   loop29:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                         §§push(param1);
                                                                                                                                                         loop8:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().substring(_loc11_,_loc13_ + 1));
                                                                                                                                                            loop9:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               loop10:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(false);
                                                                                                                                                                  loop11:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop1;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        loop12:
                                                                                                                                                                        for(; !(_loc20_ && _loc3_); if(!(_loc21_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        },§§goto(addr292),§§push(_loc4_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           loop13:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              addr574:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop().indexOf(§§pop(),§§pop()) >= 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    loop15:
                                                                                                                                                                                    while(!(_loc20_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       loop16:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                          loop17:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                                                                                                                                             addr515:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                addr516:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   loop57:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         loop58:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  loop42:
                                                                                                                                                                                                                  while(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     loop43:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           addr457:
                                                                                                                                                                                                                           loop34:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().indexOf(§§pop(),§§pop()) > _loc15_.indexOf(_loc3_,1));
                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr490:
                                                                                                                                                                                                                                 while(_loc21_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    loop35:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       loop36:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!_loc21_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                          loop46:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(1);
                                                                                                                                                                                                                                             addr402:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc20_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().indexOf(§§pop(),§§pop()) > 0);
                                                                                                                                                                                                                                                if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc20_ && LuaUtils)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop44;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(true);
                                                                                                                                                                                                                                                            addr432:
                                                                                                                                                                                                                                                            addr606:
                                                                                                                                                                                                                                                            loop45:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                                                                        loop66:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop26;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                              if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc20_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop45;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop35;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop66;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                                                                              loop49:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr578:
                                                                                                                                                                                                                                                                                 addr578:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                    addr579:
                                                                                                                                                                                                                                                                                    loop20:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                       addr580:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop().indexOf(§§pop(),§§pop()) < 0)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(param2);
                                                                                                                                                                                                                                                                                                   if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc21_ || LuaUtils)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                         break loop34;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop54;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr662:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc8_.push(_loc11_);
                                                                                                                                                                                                                                                                                                   loop51:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                                                                      addr644:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                                                                                                                         addr645:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                                            addr646:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                                                                                                                     if(_loc21_ || LuaUtils)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop13;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop46;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr292:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop48;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop20;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop49;
                                                                                                                                                                                                                                                                                                                     addr336:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                                                                                                                                  addr221:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop10;
                                                                                                                                                                                                                                                                                             addr583:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr499:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr347);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr347:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr437:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr553:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  addr554:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop25;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr499);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               break loop42;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr431:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr347);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr578);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr432);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 addr490:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 addr467:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop61:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              addr604:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 addr605:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr606);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr550:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr551:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr553);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr552:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr499);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop61;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     break loop15;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr429);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr605);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0);
                                                                                                                                                                                       if(!(_loc20_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr550);
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr554);
                                                                                                                                                                                       §§goto(addr503);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr503:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr577);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop9;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr641:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr645);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr662);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr661);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(0);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr698);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr699);
                                                                        }
                                                                        §§goto(addr673);
                                                                     }
                                                                     §§goto(addr661);
                                                                  }
                                                                  §§goto(addr515);
                                                               }
                                                               §§goto(addr490);
                                                            }
                                                         }
                                                         §§goto(addr698);
                                                      }
                                                      §§goto(addr604);
                                                   }
                                                   §§goto(addr467);
                                                }
                                                §§goto(addr482);
                                             }
                                             §§goto(addr551);
                                          }
                                          §§goto(addr516);
                                       }
                                       §§goto(addr437);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr554);
                              }
                              §§goto(addr466);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr671);
                     }
                     §§goto(addr694);
                  }
                  §§goto(addr651);
               }
               §§goto(addr262);
            }
            break;
         }
         var _loc14_:* = §§pop();
         if(!_loc20_)
         {
            loop83:
            while(true)
            {
               §§push(_loc14_);
               if(_loc21_ || LuaUtils)
               {
                  if(§§pop() >= _loc9_.length)
                  {
                     if(_loc21_)
                     {
                        §§push(param1);
                        if(!(_loc20_ && param1))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc21_)
                           {
                              if(_loc21_ || param1)
                              {
                                 param1 = §§pop();
                                 loop85:
                                 while(!(_loc20_ && LuaUtils))
                                 {
                                    if(_loc21_ || param2)
                                    {
                                       if(_loc21_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                             if(_loc21_ || param2)
                                             {
                                                if(_loc21_ || _loc3_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc21_ || param2)
                                                   {
                                                      addr756:
                                                      §§push(int(§§pop()));
                                                      while(true)
                                                      {
                                                         if(_loc21_)
                                                         {
                                                            _loc14_ = §§pop();
                                                            while(!_loc21_)
                                                            {
                                                               continue loop85;
                                                            }
                                                            continue loop83;
                                                            addr760:
                                                         }
                                                         addr922:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            loop104:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop99:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop97:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc11_);
                                                                     loop98:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().substring(§§pop(),§§pop()));
                                                                        addr891:
                                                                        loop95:
                                                                        while(true)
                                                                        {
                                                                           _loc17_ = §§pop();
                                                                           addr902:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc21_ || LuaUtils))
                                                                              {
                                                                                 continue loop104;
                                                                              }
                                                                              if(!(_loc20_ && param1))
                                                                              {
                                                                                 §§push(param1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    loop89:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       loop90:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc20_ && param1)
                                                                                          {
                                                                                             continue loop98;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop91:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().substring(§§pop(),_loc13_));
                                                                                             loop92:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc18_ = §§pop();
                                                                                                addr884:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   addr824:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(_loc21_ || LuaUtils)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc20_ && LuaUtils))
                                                                                                                  {
                                                                                                                     §§push(§§pop().substring(§§pop()));
                                                                                                                     while(!(_loc21_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop92;
                                                                                                                     }
                                                                                                                     addr866:
                                                                                                                     _loc19_ = §§pop();
                                                                                                                     break loop85;
                                                                                                                     addr859:
                                                                                                                  }
                                                                                                                  continue loop91;
                                                                                                               }
                                                                                                               continue loop90;
                                                                                                            }
                                                                                                            continue loop97;
                                                                                                         }
                                                                                                         continue loop89;
                                                                                                      }
                                                                                                      continue loop99;
                                                                                                   }
                                                                                                   continue loop92;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop98;
                                                                                    }
                                                                                 }
                                                                                 addr870:
                                                                              }
                                                                              continue loop95;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr757:
                                                   }
                                                   §§goto(addr757);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc11_ = §§pop();
                                                   }
                                                   addr930:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr922);
                                                }
                                             }
                                             §§goto(addr756);
                                          }
                                          addr821:
                                       }
                                       §§goto(addr902);
                                    }
                                    §§goto(addr884);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(_loc20_ && param1)
                                    {
                                       break;
                                    }
                                    if(_loc21_ || param1)
                                    {
                                       if(_loc21_ || _loc3_)
                                       {
                                          §§push(§§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                          break;
                                       }
                                       §§goto(addr870);
                                    }
                                    §§goto(addr859);
                                    §§goto(addr866);
                                 }
                                 continue;
                              }
                              §§goto(addr891);
                           }
                           §§goto(addr824);
                        }
                     }
                     §§goto(addr760);
                  }
                  else
                  {
                     §§push(int(_loc9_[_loc14_]));
                  }
                  §§goto(addr930);
               }
               §§goto(addr756);
            }
            return §§pop();
         }
         §§goto(addr821);
      }
   }
}
