package §5=§
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
      
      public static function §%!9§(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§§pop().replace(/\-\-\[\[[\s\S]*\]\]/mg,""));
               addr243:
               while(true)
               {
                  param1 = §§pop();
               }
            }
            addr235:
         }
         loop2:
         while(true)
         {
            §§push(param1);
            loop3:
            while(true)
            {
               §§push(§§pop().replace(/\-\-.*/g,""));
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
                        while(true)
                        {
                           param1 = §§pop();
                           loop8:
                           while(true)
                           {
                              §§push(param1);
                              loop9:
                              while(_loc4_)
                              {
                                 §§push(§§pop().replace(/^\s*\}\s*$/mg,"},"));
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       param1 = §§pop();
                                       loop11:
                                       while(_loc4_ || _loc3_)
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop().replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,"));
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             addr176:
                                             while(true)
                                             {
                                                §§push(param1);
                                                addr131:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc4_ || LuaUtils))
                                             {
                                                continue loop11;
                                             }
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push("{");
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + param1);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() + "}");
                                                }
                                             }
                                             §§push(§§pop());
                                             loop17:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop19:
                                                   for(; _loc4_; if(!(_loc3_ && LuaUtils))
                                                   {
                                                      continue loop9;
                                                   })
                                                   {
                                                      §§push(§§pop().replace(/,(\s*[\]\}$])/mg,"$1"));
                                                      loop20:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         param1 = §§pop();
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || LuaUtils))
                                                            {
                                                               continue loop18;
                                                            }
                                                            if(_loc4_ || LuaUtils)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§'!+§(param1,param2));
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               continue loop17;
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         continue loop16;
                                                         §§goto(addr81);
                                                      }
                                                      addr81:
                                                   }
                                                   §§goto(addr131);
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop8;
                                    }
                                    §§goto(addr235);
                                 }
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr54);
                                 §§push(§§pop());
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function §'!+§(param1:String, param2:Boolean) : String
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:String = null;
         var _loc18_:* = null;
         var _loc19_:String = null;
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
         if(!_loc20_)
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
               if(_loc21_)
               {
                  if(_loc21_)
                  {
                     §§push(0);
                     if(_loc21_ || LuaUtils)
                     {
                        if(_loc21_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!_loc20_)
                           {
                              if(!(_loc20_ && LuaUtils))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc20_)
                                 {
                                    if(_loc21_ || param2)
                                    {
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop());
                                          if(_loc21_ || LuaUtils)
                                          {
                                             if(!_loc20_)
                                             {
                                                if(_loc21_ || param2)
                                                {
                                                   addr149:
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc21_)
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc21_)
                                                                     {
                                                                        if(!(_loc20_ && LuaUtils))
                                                                        {
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(_loc21_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       loop66:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr684:
                                                                                          loop81:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() >= §§pop());
                                                                                             if(!(_loc20_ && _loc3_))
                                                                                             {
                                                                                                loop79:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr693:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§push(_loc11_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() >= §§pop());
                                                                                                               loop72:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!(_loc20_ && LuaUtils))
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop63:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop64:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop56:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc13_);
                                                                                                                                       if(!(_loc21_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop81;
                                                                                                                                       }
                                                                                                                                       addr651:
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       loop9:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr653:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(int(_loc8_.pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                      if(!(_loc21_ || param2))
                                                                                                                                                      {
                                                                                                                                                         addr694:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr697);
                                                                                                                                                         }
                                                                                                                                                         break loop56;
                                                                                                                                                      }
                                                                                                                                                      §§push(param1);
                                                                                                                                                      loop83:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().substring(_loc11_,_loc13_ + 1));
                                                                                                                                                         loop25:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            loop59:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(false);
                                                                                                                                                               loop49:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  loop21:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        loop47:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1);
                                                                                                                                                                              loop45:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop().indexOf(§§pop(),§§pop()) >= 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    loop58:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_ || LuaUtils)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             loop7:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                loop8:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().indexOf(§§pop(),§§pop()) < 0);
                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc20_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            loop52:
                                                                                                                                                                                                            while(!(_loc21_ || LuaUtils))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop53:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc20_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop56;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop54:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop60:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                           addr538:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              loop51:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                                                                 addr540:
                                                                                                                                                                                                                                 loop36:
                                                                                                                                                                                                                                 while(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop37:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop20:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             addr298:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop52;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc20_ && param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop51;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc21_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop72;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop16:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ && param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop36;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc9_.push(_loc11_);
                                                                                                                                                                                                                                                                     loop17:
                                                                                                                                                                                                                                                                     while(_loc21_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc10_.push(_loc13_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_ && LuaUtils)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop17;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop16;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                                                                                                                 loop48:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                       loop46:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                             loop44:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr255:
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                                                                            addr268:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                               addr269:
                                                                                                                                                                                                                                                                                                               addr278:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                        addr512:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().search(/[a..z,A..Z,0..9]+/g) >= 0);
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop37;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr589:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  loop40:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ || _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop79;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr386:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr385:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           addr405:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                              addr406:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       break loop17;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                                                                                                                    addr407:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr370:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr371:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop40;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr404:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop56;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop48;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr185:
                                                                                                                                                                                                                                                                                                                  if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc20_ && LuaUtils)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     if(!_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(_loc20_ && param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop8;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(int(§§pop().indexOf(§§pop(),§§pop())));
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop66;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop0;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop16;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr269);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        loop4:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop7;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                                                                                                                           loop5:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop().indexOf(§§pop(),§§pop()) > _loc15_.indexOf(_loc3_,1));
                                                                                                                                                                                                                                                                                                                              addr401:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break loop5;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr255);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                              addr495:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ || LuaUtils))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc20_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop59;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                       continue loop4;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                                                                                                                    §§goto(addr185);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr404);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr389);
                                                                                                                                                                                                                                                                                                                  §§goto(addr278);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop81;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr395);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr364:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().indexOf(§§pop(),§§pop()) > 0);
                                                                                                                                                                                                                                                                                                   addr367:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr370);
                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr574:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                         addr575:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                            addr576:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(!(_loc20_ && _loc3_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                                                                           §§goto(addr589);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                                                                                                                        addr581:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop54;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop63;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr356:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr364);
                                                                                                                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr566:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(1);
                                                                                                                                                                                                                                                                                                   addr567:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop().indexOf(§§pop(),§§pop()) >= 0)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr566:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr574);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr353:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop83;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr356);
                                                                                                                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr386);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr353);
                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                                                                                                                        addr565:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr566);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr564:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr570);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc11_);
                                                                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                                                                  if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                                                                                                                               break loop36;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr697:
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                            break loop56;
                                                                                                                                                                                                                                                            addr659:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr240);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr581);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr407);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr385);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr416:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc8_.push(_loc11_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr655:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr659);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr278);
                                                                                                                                                                                                                                    §§goto(addr540);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr416);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(_loc21_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr494);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr370);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr575);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr486:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr486);
                                                                                                                                                                                                            addr470:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr538);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr470);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr567);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr565);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr512);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr564);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr566);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr697);
                                                                                                                                                   }
                                                                                                                                                   addr611:
                                                                                                                                                }
                                                                                                                                                §§goto(addr655);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 var _loc14_:* = §§pop();
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr702:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(_loc21_ || LuaUtils)
                                                                                                                                    {
                                                                                                                                       if(_loc21_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                          {
                                                                                                                                             if(§§pop() >= _loc9_.length)
                                                                                                                                             {
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr736:
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(_loc21_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr883:
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc18_ = §§pop();
                                                                                                                                                                        addr816:
                                                                                                                                                                        §§push(param1);
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(!(_loc20_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc20_ && LuaUtils))
                                                                                                                                                                              {
                                                                                                                                                                                 addr842:
                                                                                                                                                                                 _loc19_ = §§pop().substring(§§pop());
                                                                                                                                                                                 if(!(_loc20_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr775:
                                                                                                                                                                                    §§push(_loc17_);
                                                                                                                                                                                    if(_loc21_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc21_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr805:
                                                                                                                                                                                             §§push(§§pop() + _loc5_ + _loc18_ + _loc6_ + _loc19_);
                                                                                                                                                                                             if(_loc21_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                param1 = §§pop();
                                                                                                                                                                                                §§push(_loc14_);
                                                                                                                                                                                                if(!(_loc20_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                   if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr769:
                                                                                                                                                                                                      _loc14_ = int(§§pop());
                                                                                                                                                                                                      addr770:
                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr702);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr894:
                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr853:
                                                                                                                                                                                                         addr854:
                                                                                                                                                                                                         §§push(param1);
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(!(_loc20_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr891:
                                                                                                                                                                                                            §§push(1);
                                                                                                                                                                                                            if(!(_loc20_ && LuaUtils))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr870:
                                                                                                                                                                                                               §§goto(addr883);
                                                                                                                                                                                                               §§push(§§pop().substring(§§pop() + §§pop(),_loc13_));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc17_ = §§pop().substring(§§pop(),§§pop());
                                                                                                                                                                                                            §§goto(addr894);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                         §§goto(addr891);
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr769);
                                                                                                                                                                                                addr813:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr890);
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr853);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr816);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr842);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr902:
                                                                                                                                                                                 _loc13_ = int(_loc10_[_loc14_]);
                                                                                                                                                                                 §§goto(addr769);
                                                                                                                                                                                 addr911:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr870);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr891);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr854);
                                                                                                                                                                        addr886:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr891);
                                                                                                                                                                  }
                                                                                                                                                                  return §§pop();
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr775);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr805);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr886);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr842);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr813);
                                                                                                                                                }
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                             §§push(int(_loc9_[_loc14_]));
                                                                                                                                          }
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          §§goto(addr911);
                                                                                                                                       }
                                                                                                                                       §§goto(addr902);
                                                                                                                                    }
                                                                                                                                    §§goto(addr769);
                                                                                                                                 }
                                                                                                                                 §§goto(addr736);
                                                                                                                              }
                                                                                                                              addr678:
                                                                                                                           }
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr678);
                                                                                                               }
                                                                                                            }
                                                                                                            addr666:
                                                                                                         }
                                                                                                         §§goto(addr697);
                                                                                                      }
                                                                                                      §§goto(addr694);
                                                                                                   }
                                                                                                }
                                                                                                addr692:
                                                                                             }
                                                                                             §§goto(addr693);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr697);
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              §§goto(addr495);
                                                                           }
                                                                           §§goto(addr284);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr694);
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                               §§goto(addr298);
                                                            }
                                                         }
                                                         §§goto(addr693);
                                                      }
                                                      §§goto(addr576);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr405);
                                          }
                                          §§goto(addr149);
                                       }
                                       §§goto(addr367);
                                    }
                                    §§goto(addr371);
                                 }
                                 §§goto(addr693);
                              }
                              §§goto(addr527);
                           }
                           §§goto(addr692);
                        }
                        §§goto(addr666);
                     }
                     §§goto(addr684);
                  }
                  §§goto(addr611);
               }
               §§goto(addr268);
            }
            §§goto(addr697);
         }
      }
   }
}
