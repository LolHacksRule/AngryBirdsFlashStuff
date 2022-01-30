package §?u§
{
   import §`!?§.§6!K§;
   
   public class §`",§ implements §`_§
   {
       
      
      private var §<a§:§`_§;
      
      private var §06§:String;
      
      private var §%A§:§`_§;
      
      private var §4!1§:Number = 0.0;
      
      public function §`",§(param1:§`_§, param2:§`_§, param3:String)
      {
         super();
         this.§<a§ = param1;
         this.§%A§ = param2;
         this.§06§ = param3;
         this.§4!1§ = param2.duration;
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
      
      public function get child() : §`_§
      {
         return this.§%A§;
      }
      
      public function set §,@§(param1:§6!K§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.§%A§.update(param1);
         this.§<a§.setObject(this.§06§,this.§%A§.target);
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§4!1§;
      }
      
      public function get parent() : §`_§
      {
         return this.§<a§;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §,@§() : §6!K§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §'S§
      {
         return new §`",§(this.§<a§,this.§%A§,this.§06§);
      }
   }
}
