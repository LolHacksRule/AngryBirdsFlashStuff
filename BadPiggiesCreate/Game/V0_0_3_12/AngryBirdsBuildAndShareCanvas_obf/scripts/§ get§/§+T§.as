package § get§
{
   import §4!H§.§05§;
   
   public class §+T§ implements §#!K§
   {
       
      
      private var §9!h§:§#!K§;
      
      private var §#!_§:String;
      
      private var §#!f§:§#!K§;
      
      private var §,!O§:Number = 0.0;
      
      public function §+T§(param1:§#!K§, param2:§#!K§, param3:String)
      {
         super();
         this.§9!h§ = param1;
         this.§#!f§ = param2;
         this.§#!_§ = param3;
         this.§,!O§ = param2.duration;
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
      
      public function get child() : §#!K§
      {
         return this.§#!f§;
      }
      
      public function set §1<§(param1:§05§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§#!f§.update(param1);
         this.§9!h§.setObject(this.§#!_§,this.§#!f§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§,!O§;
      }
      
      public function get parent() : §#!K§
      {
         return this.§9!h§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §1<§() : §05§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §,B§
      {
         return new §+T§(this.§9!h§,this.§#!f§,this.§#!_§);
      }
   }
}
