package §2k§
{
   public class §for§
   {
       
      
      protected var §-`§:Number;
      
      protected var §4J§:Number;
      
      protected var §-_§:Number;
      
      protected var §#I§:Boolean;
      
      public function §for§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            if(!(_loc6_ && param1))
            {
               this.§-`§ = param1;
               if(_loc5_ || this)
               {
                  this.§4J§ = param2;
                  if(_loc6_)
                  {
                  }
                  §§goto(addr77);
               }
               this.§-_§ = param3;
               if(!(_loc6_ && param3))
               {
                  §§goto(addr77);
               }
            }
            §§goto(addr77);
         }
         addr77:
         this.§#I§ = param4;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function get §^s§() : Boolean
      {
         return this.§#I§;
      }
   }
}
