package starling.events
{
   import §?^§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §?l§
   {
      
      private static var §-!#§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!#§ = new Matrix();
         }
      }
      
      private var §+!§:int;
      
      private var §->§:Number;
      
      private var §#<§:Number;
      
      private var §6c§:Number;
      
      private var §4C§:Number;
      
      private var §!9§:int;
      
      private var §#!H§:String;
      
      private var §"^§:DisplayObject;
      
      private var §`!§:Number;
      
      public function §?l§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(_loc8_)
         {
            this.§+!§ = param1;
            if(!(_loc7_ && param3))
            {
               this.§->§ = this.§6c§ = param2;
               if(_loc8_)
               {
                  this.§#<§ = this.§4C§ = param3;
                  if(_loc8_)
                  {
                     addr73:
                     this.§!9§ = 0;
                     if(_loc8_ || param2)
                     {
                        this.§#!H§ = param4;
                     }
                  }
               }
            }
            this.§"^§ = param5;
            return;
         }
         §§goto(addr73);
      }
      
      public function §^]§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§->§,this.§#<§);
         if(_loc3_ || _loc2_)
         {
            this.§"^§.root.§<^§(param1,§-!#§);
         }
         return §-!#§.transformPoint(_loc2_);
      }
      
      public function §1!$§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§6c§,this.§4C§);
         if(_loc3_ || this)
         {
            this.§"^§.root.§<^§(param1,§-!#§);
         }
         return §-!#§.transformPoint(_loc2_);
      }
      
      public function clone() : §?l§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?l§ = new §?l§(this.§+!§,this.§->§,this.§#<§,this.§#!H§,this.§"^§);
         if(_loc2_ || _loc2_)
         {
            _loc1_.§6c§ = this.§6c§;
            if(!_loc3_)
            {
               _loc1_.§4C§ = this.§4C§;
               if(_loc2_)
               {
                  addr69:
                  _loc1_.§!9§ = this.§!9§;
                  if(!_loc3_)
                  {
                     _loc1_.§`!§ = this.§`!§;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr69);
      }
      
      public function get id() : int
      {
         return this.§+!§;
      }
      
      public function get globalX() : Number
      {
         return this.§->§;
      }
      
      public function get globalY() : Number
      {
         return this.§#<§;
      }
      
      public function get §,!H§() : Number
      {
         return this.§6c§;
      }
      
      public function get §2$§() : Number
      {
         return this.§4C§;
      }
      
      public function get §5!G§() : int
      {
         return this.§!9§;
      }
      
      public function get phase() : String
      {
         return this.§#!H§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§"^§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`!§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§6c§ = this.§->§;
            if(_loc3_ || this)
            {
               this.§4C§ = this.§#<§;
               if(!_loc4_)
               {
                  this.§->§ = param1;
                  if(!_loc4_)
                  {
                     addr55:
                     this.§#<§ = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      function §-_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!H§ = param1;
         }
      }
      
      function §%!'§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!9§ = param1;
         }
      }
      
      function §8=§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"^§ = param1;
         }
      }
      
      function §+!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!§ = param1;
         }
      }
   }
}
