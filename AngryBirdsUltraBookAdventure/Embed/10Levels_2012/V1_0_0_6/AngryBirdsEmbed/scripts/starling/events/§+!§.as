package starling.events
{
   import §,_§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §+!§
   {
      
      private static var §!!G§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!G§ = new Matrix();
         }
      }
      
      private var §8!8§:int;
      
      private var §]!&§:Number;
      
      private var §-!>§:Number;
      
      private var §[?§:Number;
      
      private var final:Number;
      
      private var §in §:int;
      
      private var § !0§:String;
      
      private var §#B§:DisplayObject;
      
      private var §58§:Number;
      
      public function §+!§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(_loc8_ || param2)
         {
            this.§8!8§ = param1;
            this.§]!&§ = this.§[?§ = param2;
            if(!(_loc7_ && this))
            {
               this.§-!>§ = this.final = param3;
               this.§in § = 0;
               §§goto(addr55);
            }
            §§goto(addr94);
         }
         addr55:
         if(_loc8_ || param2)
         {
            this.§ !0§ = param4;
            if(!(_loc7_ && this))
            {
               addr94:
               this.§#B§ = param5;
            }
         }
      }
      
      public function §>!5§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§]!&§,this.§-!>§);
         if(_loc3_)
         {
            this.§#B§.root.§>!>§(param1,§!!G§);
         }
         return §!!G§.transformPoint(_loc2_);
      }
      
      public function §+d§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§[?§,this.final);
         if(_loc3_)
         {
            this.§#B§.root.§>!>§(param1,§!!G§);
         }
         return §!!G§.transformPoint(_loc2_);
      }
      
      public function clone() : §+!§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+!§ = new §+!§(this.§8!8§,this.§]!&§,this.§-!>§,this.§ !0§,this.§#B§);
         if(_loc3_)
         {
            _loc1_.§[?§ = this.§[?§;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.final = this.final;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr75);
               }
               §§goto(addr81);
            }
         }
         addr75:
         _loc1_.§in § = this.§in §;
         if(!_loc2_)
         {
            addr81:
            _loc1_.§58§ = this.§58§;
         }
         return _loc1_;
      }
      
      public function get id() : int
      {
         return this.§8!8§;
      }
      
      public function get globalX() : Number
      {
         return this.§]!&§;
      }
      
      public function get globalY() : Number
      {
         return this.§-!>§;
      }
      
      public function get §[V§() : Number
      {
         return this.§[?§;
      }
      
      public function get §;H§() : Number
      {
         return this.final;
      }
      
      public function get §1!B§() : int
      {
         return this.§in §;
      }
      
      public function get phase() : String
      {
         return this.§ !0§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§#B§;
      }
      
      public function get timestamp() : Number
      {
         return this.§58§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§[?§ = this.§]!&§;
            if(!(_loc3_ && param1))
            {
               addr45:
               this.final = this.§-!>§;
               if(_loc4_)
               {
                  this.§]!&§ = param1;
                  if(!_loc3_)
                  {
                     addr56:
                     this.§-!>§ = param2;
                  }
                  return;
               }
            }
            §§goto(addr56);
         }
         §§goto(addr45);
      }
      
      function §'r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !0§ = param1;
         }
      }
      
      function § s§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§in § = param1;
         }
      }
      
      function §#^§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§#B§ = param1;
         }
      }
      
      function §+!'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§58§ = param1;
         }
      }
   }
}
