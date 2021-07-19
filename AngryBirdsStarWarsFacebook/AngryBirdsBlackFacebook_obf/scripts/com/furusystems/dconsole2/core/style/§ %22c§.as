package com.furusystems.dconsole2.core.style
{
   public dynamic class § "c§
   {
       
      
      private var §'!l§:XML;
      
      public function § "c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function §@#5§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§'!l§ = param1;
         }
      }
      
      public function §&!H§(param1:String) : uint
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§'!l§.§*§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.localName().toLowerCase() == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            throw new Error("No such color \'" + param1 + "\'");
         }
         return uint(_loc2_.text());
      }
      
      public function get xml() : XML
      {
         return this.§'!l§;
      }
      
      public function set xml(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@#5§(param1);
         }
      }
   }
}
