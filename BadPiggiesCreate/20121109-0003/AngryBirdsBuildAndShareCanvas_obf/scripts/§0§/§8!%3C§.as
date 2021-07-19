package §0§
{
   import §0x§.§?"3§;
   
   public class §8!<§ implements §,l§
   {
       
      
      private var §9!#§:§,l§;
      
      private var §1'§:String;
      
      private var §>F§:§,l§;
      
      private var §!"-§:Number = 0.0;
      
      public function §8!<§(param1:§,l§, param2:§,l§, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§9!#§ = param1;
               while(true)
               {
                  this.§>F§ = param2;
                  continue loop0;
                  addr53:
                  if(!(_loc4_ && param2))
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function get child() : §,l§
      {
         return this.§>F§;
      }
      
      public function set §3!`§(param1:§?"3§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>F§.update(param1);
            do
            {
               this.§9!#§.setObject(this.§1'§,this.§>F§.target);
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§!"-§;
      }
      
      public function get parent() : §,l§
      {
         return this.§9!#§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §3!`§() : §?"3§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §-!G§
      {
         return new §8!<§(this.§9!#§,this.§>F§,this.§1'§);
      }
   }
}
