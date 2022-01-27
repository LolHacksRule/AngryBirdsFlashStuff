package com.furusystems.dconsole2.core.style
{
   public dynamic class § "c§
   {
       
      
      private var §'!l§:XML;
      
      public function § "c§()
      {
         super();
      }
      
      public function §@#5§(param1:XML) : void
      {
         this.§'!l§ = param1;
      }
      
      public function §&!H§(param1:String) : uint
      {
         var _loc2_:XML = null;
         param1 = param1.toLowerCase();
         for each(_loc2_ in this.§'!l§.§*§)
         {
            if(_loc2_.localName().toLowerCase() == param1)
            {
               return uint(_loc2_.text());
            }
         }
         throw new Error("No such color \'" + param1 + "\'");
      }
      
      public function get xml() : XML
      {
         return this.§'!l§;
      }
      
      public function set xml(param1:XML) : void
      {
         this.§@#5§(param1);
      }
   }
}
