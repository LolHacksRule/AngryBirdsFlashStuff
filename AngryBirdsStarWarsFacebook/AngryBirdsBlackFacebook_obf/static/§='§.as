package static
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import flash.utils.Dictionary;
   
   public class §='§
   {
       
      
      private var §"#E§:Dictionary;
      
      public function §='§(param1:§>l§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"#E§ = new Dictionary();
         }
         while(true)
         {
            super();
            while(!_loc3_)
            {
               param1.addCallback(§""A§.§]!9§,this.§3"?§);
               while(!_loc3_)
               {
                  param1.addCallback(§""A§.§-!'§,this.§<'§);
                  if(_loc2_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §<'§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            delete this.§"#E§[param1.data.title.toLowerCase()];
         }
      }
      
      private function §3"?§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§"#E§[param1.data.title.toLowerCase()] = param1.data;
         }
      }
      
      public function §;!Q§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§"#E§[param1.toLowerCase()] = new §-J§(param1,param2);
         }
      }
      
      public function §'T§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§"#E§[param1.toLowerCase()] != null)
            {
               if(_loc2_)
               {
                  return §-J§(this.§"#E§[param1.toLowerCase()]).toString();
                  addr37:
               }
            }
            §§push("No such topic \'" + param1);
            if(!_loc3_)
            {
               return §§pop() + "\'";
            }
         }
         §§goto(addr37);
      }
      
      public function §,"n§() : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc1_:String = "Table of contents:\n";
         var _loc2_:Array = [];
         for(_loc3_ in this.§"#E§)
         {
            if(_loc7_ || _loc3_)
            {
               _loc2_.push(this.§"#E§[_loc3_]);
            }
         }
         if(!_loc8_)
         {
            _loc2_.sortOn("title");
            loop1:
            while(true)
            {
               §§push(int(_loc2_.length));
               while(true)
               {
                  _loc4_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc4_ = §§pop();
                     }
                     if(!(_loc7_ || _loc1_))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        §§push(_loc1_);
                        continue;
                     }
                     if(!(_loc8_ && _loc1_))
                     {
                        continue loop1;
                     }
                     addr150:
                     while(true)
                     {
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
   }
}
