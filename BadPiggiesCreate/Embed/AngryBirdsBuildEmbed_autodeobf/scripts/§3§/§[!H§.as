package §3§
{
   public class §[!H§ implements § null§
   {
       
      
      private var _parent:§ null§;
      
      private var §'w§:String;
      
      private var §8!]§:§ null§;
      
      public function §[!H§(param1:§ null§, param2:§ null§, param3:String)
      {
         super();
         this._parent = param1;
         this.§8!]§ = param2;
         this.§'w§ = param3;
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
         this.§8!]§.update(param1);
         this._parent.setObject(this.§'w§,this.§8!]§.target);
      }
      
      public function get child() : § null§
      {
         return this.§8!]§;
      }
      
      public function clone() : § null§
      {
         return new §[!H§(this._parent,this.§8!]§,this.§'w§);
      }
      
      public function get target() : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get parent() : § null§
      {
         return this._parent;
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
