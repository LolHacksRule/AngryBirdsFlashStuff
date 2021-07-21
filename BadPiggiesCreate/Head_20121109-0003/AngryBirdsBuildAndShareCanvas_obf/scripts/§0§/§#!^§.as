package §0§
{
   public class §#!^§ implements §-!G§
   {
       
      
      private var §9!#§:§-!G§;
      
      private var §1'§:String;
      
      private var §>F§:§-!G§;
      
      public function §#!^§(param1:§-!G§, param2:§-!G§, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            while(true)
            {
               this.§9!#§ = param1;
               loop1:
               for(; !(_loc4_ && param3); while(_loc5_ || param3)
               {
                  this.§1'§ = param3;
                  if(!(_loc4_ && param3))
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§>F§ = param2;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>F§.update(param1);
         }
         do
         {
            this.§9!#§.setObject(this.§1'§,this.§>F§.target);
         }
         while(!(_loc2_ || param1));
         
      }
      
      public function get child() : §-!G§
      {
         return this.§>F§;
      }
      
      public function clone() : §-!G§
      {
         return new §#!^§(this.§9!#§,this.§>F§,this.§1'§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : §-!G§
      {
         return this.§9!#§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
   }
}
