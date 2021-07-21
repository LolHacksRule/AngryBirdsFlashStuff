package §3§
{
   public class §[!H§ implements § null§
   {
       
      
      private var _parent:§ null§;
      
      private var §'w§:String;
      
      private var §8!]§:§ null§;
      
      public function §[!H§(param1:§ null§, param2:§ null§, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super();
            if(_loc5_ || param1)
            {
               this._parent = param1;
               if(_loc5_ || this)
               {
                  §§goto(addr63);
               }
               §§goto(addr73);
            }
         }
         addr63:
         this.§8!]§ = param2;
         if(_loc5_ || this)
         {
            addr73:
            this.§'w§ = param3;
         }
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
            this.§8!]§.update(param1);
            if(_loc2_ || _loc3_)
            {
               this._parent.setObject(this.§'w§,this.§8!]§.target);
            }
         }
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
