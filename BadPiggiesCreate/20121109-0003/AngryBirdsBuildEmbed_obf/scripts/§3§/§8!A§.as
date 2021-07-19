package §3§
{
   import §4!r§.§[!m§;
   
   public class §8!A§ implements §`A§
   {
       
      
      private var _parent:§`A§;
      
      private var §'w§:String;
      
      private var §8!]§:§`A§;
      
      private var §1J§:Number = 0.0;
      
      public function §8!A§(param1:§`A§, param2:§`A§, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            if(!_loc5_)
            {
               this._parent = param1;
               if(!_loc5_)
               {
                  this.§8!]§ = param2;
                  if(_loc4_ || param3)
                  {
                  }
                  §§goto(addr76);
               }
            }
            this.§'w§ = param3;
            if(_loc4_ || this)
            {
               this.§1J§ = param2.duration;
            }
         }
         addr76:
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
      
      public function get child() : §`A§
      {
         return this.§8!]§;
      }
      
      public function set §-;§(param1:§[!m§) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!]§.update(param1);
            if(!_loc2_)
            {
               this._parent.setObject(this.§'w§,this.§8!]§.target);
            }
         }
      }
      
      public function set target(param1:Object) : void
      {
      }
      
      public function get duration() : Number
      {
         return this.§1J§;
      }
      
      public function get parent() : §`A§
      {
         return this._parent;
      }
      
      public function resolveValues() : void
      {
      }
      
      public function get §-;§() : §[!m§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : § null§
      {
         return new §8!A§(this._parent,this.§8!]§,this.§'w§);
      }
   }
}
