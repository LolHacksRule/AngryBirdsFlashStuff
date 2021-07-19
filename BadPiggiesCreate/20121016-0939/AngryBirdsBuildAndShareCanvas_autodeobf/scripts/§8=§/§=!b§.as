package §8=§
{
   import §2p§.§1>§;
   
   public class §=!b§ implements §36§
   {
       
      
      private var §^"4§:§36§;
      
      private var §2k§:String;
      
      private var §,!2§:§36§;
      
      private var §[m§:Number = 0.0;
      
      public function §=!b§(param1:§36§, param2:§36§, param3:String)
      {
         super();
         this.§^"4§ = param1;
         this.§,!2§ = param2;
         this.§2k§ = param3;
         this.§[m§ = param2.duration;
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
      
      public function get child() : §36§
      {
         return this.§,!2§;
      }
      
      public function set §!!T§(param1:§1>§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§,!2§.update(param1);
         this.§^"4§.setObject(this.§2k§,this.§,!2§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§[m§;
      }
      
      public function get parent() : §36§
      {
         return this.§^"4§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §!!T§() : §1>§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §+?§
      {
         return new §=!b§(this.§^"4§,this.§,!2§,this.§2k§);
      }
   }
}
