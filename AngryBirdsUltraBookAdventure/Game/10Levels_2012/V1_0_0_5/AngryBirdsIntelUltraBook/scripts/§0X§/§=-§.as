package §0X§
{
   public class §=-§
   {
       
      
      public function §=-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §-A§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
               addr247:
               while(true)
               {
                  param1 = §§pop();
               }
            }
            addr240:
         }
         loop2:
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && §=-§))
            {
               §§push(§§pop().replace(/\-\-.*/g,""));
            }
            loop3:
            while(true)
            {
               param1 = §§pop();
               loop4:
               while(true)
               {
                  §§push(param1);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop().replace(/\[\"(.*)\"\]/g,"$1"));
                     loop6:
                     while(!_loc3_)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(param1);
                           addr180:
                           while(true)
                           {
                              §§push(§§pop().replace(/^\s*\}\s*$/mg,"},"));
                              addr187:
                              while(!_loc3_)
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           loop16:
                           while(!(_loc3_ && param1))
                           {
                              §§push("{");
                              if(!(_loc3_ && param2))
                              {
                                 §§push(§§pop() + param1);
                                 if(_loc4_)
                                 {
                                    addr120:
                                    §§push(§§pop() + "}");
                                 }
                                 param1 = §§pop();
                                 loop17:
                                 for(; !(_loc3_ && param2); if(_loc3_ && §=-§)
                                 {
                                    continue;
                                 },if(!_loc3_)
                                 {
                                    addr60:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return JSON.parse(param1);
                                    }
                                    addr197:
                                    while(true)
                                    {
                                       §§goto(addr162);
                                       §§goto(addr60);
                                    }
                                 },§§goto(addr177))
                                 {
                                    §§push(param1);
                                    loop18:
                                    while(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
                                       loop19:
                                       while(!_loc3_)
                                       {
                                          param1 = §§pop();
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop16;
                                             }
                                             if(_loc3_ && §=-§)
                                             {
                                                break;
                                             }
                                             §§push(§"]§(param1,param2));
                                             if(!_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop18;
                                                }
                                                if(!_loc3_)
                                                {
                                                   addr39:
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop19;
                                                   }
                                                   addr41:
                                                   if(_loc4_ || param1)
                                                   {
                                                      param1 = §§pop();
                                                      if(_loc4_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      continue;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr135:
                                                         if(_loc4_ || §=-§)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop().replace(/([ \t\{]*)([^\=\n ]*) ?\=/mg,"$1\"$2\":"));
                                                               break loop18;
                                                            }
                                                            break;
                                                         }
                                                         addr162:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                                            §§goto(addr135);
                                                         }
                                                      }
                                                      while(_loc4_ || param1)
                                                      {
                                                         param1 = §§pop();
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr39);
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr240);
                                    }
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       continue loop16;
                                       §§goto(addr70);
                                    }
                                    addr70:
                                 }
                                 continue loop2;
                              }
                              §§goto(addr120);
                           }
                        }
                     }
                     §§goto(addr247);
                  }
               }
            }
         }
      }
      
      private static function §"]§(param1:String, param2:Boolean) : String
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
         var _loc11_:*;
         §§push(_loc11_ = int(param1.indexOf(_loc3_)));
         if(!(_loc20_ && §=-§))
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:* = int(param1.indexOf(_loc4_));
         loop0:
         while(true)
         {
            §§push(_loc11_);
            if(!(_loc20_ && param1))
            {
               if(!_loc20_)
               {
                  if(_loc21_)
                  {
                     §§push(0);
                     if(!_loc20_)
                     {
                        if(_loc21_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc21_ || param2)
                           {
                              if(!(_loc20_ && _loc3_))
                              {
                                 if(!(_loc20_ && §=-§))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc20_ && param2))
                                    {
                                       if(!_loc20_)
                                       {
                                          if(!_loc20_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc20_)
                                                {
                                                   addr135:
                                                   §§pop();
                                                   if(!(_loc20_ && _loc3_))
                                                   {
                                                      if(_loc21_ || §=-§)
                                                      {
                                                         if(true)
                                                         {
                                                            §§push(_loc13_);
                                                            if(_loc21_)
                                                            {
                                                               loop68:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  addr604:
                                                                  loop71:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     addr605:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(_loc11_);
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr599:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   continue loop68;
                                                                                                }
                                                                                                if(_loc20_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(_loc13_);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc21_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                }
                                                                                             }
                                                                                             continue loop68;
                                                                                          }
                                                                                          addr598:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(int(_loc8_.pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   loop73:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      loop50:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().substring(_loc11_,_loc13_ + 1));
                                                                                                         loop49:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc16_ = §§pop();
                                                                                                                  loop29:
                                                                                                                  while(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc15_);
                                                                                                                     loop30:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        loop55:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           loop52:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop().indexOf(§§pop(),§§pop()) >= 0)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_);
                                                                                                                                 loop53:
                                                                                                                                 while(!(_loc20_ && param2))
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    loop56:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                                                                                                loop37:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr441:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  loop65:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                     loop59:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           loop58:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              loop38:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().indexOf(§§pop(),§§pop()) > _loc15_.indexOf(_loc3_,1));
                                                                                                                                                                                 loop39:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          loop42:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr413:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                loop31:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                                                                         loop33:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            loop40:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop().indexOf(§§pop(),§§pop()) > 0);
                                                                                                                                                                                                               if(_loc20_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop39;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop42;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr360:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc20_ && §=-§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr606:
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(true);
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                        addr606:
                                                                                                                                                                                                                        break loop0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr296:
                                                                                                                                                                                                                     loop26:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        addr298:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc20_ && param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc20_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc20_ && _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc21_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop65;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc9_.push(_loc11_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop67:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc10_.push(_loc13_);
                                                                                                                                                                                                                                 loop16:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop31;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                                                                          loop60:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc21_ || §=-§))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc20_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop53;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                             loop57:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc21_ || §=-§))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                loop54:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                   loop35:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                         addr260:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop67;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc20_ && §=-§))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr281:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop60;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop59;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop56;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop55;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop54;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop40;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc20_ && param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop35;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop34;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop68;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                                                                           if(_loc21_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr606);
                                                                                                                                                                                                                                                                           §§goto(addr281);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           §§goto(addr209);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr567:
                                                                                                                                                                                                                                                                        addr152:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr599);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(_loc21_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(true);
                                                                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop73;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(param2);
                                                                                                                                                                                                                                                                        addr517:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                           addr518:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                              addr519:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0);
                                                                                                                                                                                                                                                                                                while(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                                addr464:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr455:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr606);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr527:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr468);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr415:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr415:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr468:
                                                                                                                                                                                                                                                                     addr516:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr606);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                                                                                                                               break loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr227:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc20_ && §=-§)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                             addr512:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                addr513:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop().indexOf(§§pop(),§§pop()) < 0)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr516);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr415);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr590:
                                                                                                                                                                                                                                       addr496:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr567);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr227);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc8_.push(_loc11_);
                                                                                                                                                                                                                     §§goto(addr590);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr360:
                                                                                                                                                                                                                  addr587:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr517);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr511);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr527);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr360);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr455);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr518);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr464);
                                                                                                                                                         }
                                                                                                                                                         addr442:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr360);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr513);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                              §§goto(addr496);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr152);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr563:
                                                                                             }
                                                                                             §§goto(addr587);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr606);
                                                                        continue loop71;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      §§goto(addr488);
                                                   }
                                                   §§goto(addr606);
                                                }
                                             }
                                             §§goto(addr605);
                                          }
                                          §§goto(addr519);
                                       }
                                       §§goto(addr441);
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr442);
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr577);
                     }
                     §§goto(addr604);
                  }
                  §§goto(addr563);
               }
               §§goto(addr260);
            }
            break;
         }
         var _loc14_:* = §§pop();
         if(!(_loc20_ && §=-§))
         {
            while(true)
            {
               §§push(_loc14_);
               if(_loc21_)
               {
                  if(§§pop() >= _loc9_.length)
                  {
                     if(_loc21_)
                     {
                        if(!_loc20_)
                        {
                           if(_loc21_)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc21_)
                                 {
                                    if(_loc21_)
                                    {
                                       if(!(_loc20_ && param1))
                                       {
                                          if(_loc21_)
                                          {
                                             break;
                                          }
                                          loop94:
                                          while(true)
                                          {
                                             §§push(_loc11_);
                                             loop86:
                                             while(true)
                                             {
                                                §§push(1);
                                                loop83:
                                                while(true)
                                                {
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop82:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().substring(§§pop(),_loc13_));
                                                         addr729:
                                                         addr731:
                                                         addr732:
                                                         while(_loc20_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc17_ = §§pop();
                                                               addr757:
                                                               while(true)
                                                               {
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     §§push(param1);
                                                                     continue loop94;
                                                                  }
                                                                  loop81:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(_loc10_[_loc14_]));
                                                                     addr770:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc21_)
                                                                        {
                                                                           continue loop81;
                                                                        }
                                                                        _loc13_ = §§pop();
                                                                        loop87:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           addr752:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr753:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                              }
                                                                              continue loop87;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop82;
                                                         }
                                                         _loc18_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc21_ || param1)
                                                            {
                                                               §§push(param1);
                                                               while(true)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!(_loc21_ || §=-§))
                                                                  {
                                                                     continue loop86;
                                                                  }
                                                                  if(_loc21_ || param2)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc20_ && param1)
                                                                     {
                                                                        continue loop83;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue loop82;
                                                                     }
                                                                     §§push(§§pop().substring(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc19_ = §§pop();
                                                                        loop77:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc17_);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              addr676:
                                                                              §§push(§§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc20_ && §=-§)
                                                                                 {
                                                                                    break loop77;
                                                                                 }
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       _loc14_++;
                                                                                       continue loop77;
                                                                                    }
                                                                                    addr686:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr752);
                                                                                 }
                                                                              }
                                                                              addr676:
                                                                           }
                                                                           §§goto(addr676);
                                                                        }
                                                                        §§goto(addr729);
                                                                     }
                                                                  }
                                                                  §§goto(addr753);
                                                               }
                                                               addr689:
                                                            }
                                                            §§goto(addr773);
                                                            §§goto(addr731);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr756);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr689);
                                    }
                                    §§goto(addr717);
                                 }
                                 §§goto(addr676);
                              }
                              return §§pop();
                              addr629:
                           }
                           §§goto(addr732);
                        }
                        §§goto(addr686);
                     }
                     §§goto(addr648);
                  }
                  else
                  {
                     §§push(int(_loc9_[_loc14_]));
                  }
                  §§goto(addr780);
               }
               §§goto(addr770);
            }
         }
         §§goto(addr629);
      }
   }
}
