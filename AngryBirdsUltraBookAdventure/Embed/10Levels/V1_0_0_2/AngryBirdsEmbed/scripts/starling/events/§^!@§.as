package starling.events
{
   import §9W§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §^!@§
   {
      
      private static var §[9§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[9§ = new Matrix();
         }
      }
      
      private var §1!§:int;
      
      private var §>_§:Number;
      
      private var §]!!§:Number;
      
      private var §-S§:Number;
      
      private var §[!=§:Number;
      
      private var §-O§:int;
      
      private var §8K§:String;
      
      private var §6[§:DisplayObject;
      
      private var §]!%§:Number;
      
      public function §^!@§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         if(_loc8_)
         {
            this.§1!§ = param1;
            if(!(_loc7_ && param3))
            {
               this.§>_§ = this.§-S§ = param2;
               if(_loc8_)
               {
                  this.§]!!§ = this.§[!=§ = param3;
                  if(_loc8_)
                  {
                     addr73:
                     this.§-O§ = 0;
                     if(_loc8_ || param2)
                     {
                        this.§8K§ = param4;
                     }
                  }
               }
            }
            this.§6[§ = param5;
            return;
         }
         §§goto(addr73);
      }
      
      public function §5I§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§>_§,this.§]!!§);
         if(_loc3_ || _loc2_)
         {
            this.§6[§.root.§8w§(param1,§[9§);
         }
         return §[9§.transformPoint(_loc2_);
      }
      
      public function §<!<§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Point = new Point(this.§-S§,this.§[!=§);
         if(_loc3_ || this)
         {
            this.§6[§.root.§8w§(param1,§[9§);
         }
         return §[9§.transformPoint(_loc2_);
      }
      
      public function clone() : §^!@§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§^!@§ = new §^!@§(this.§1!§,this.§>_§,this.§]!!§,this.§8K§,this.§6[§);
         if(_loc2_ || _loc2_)
         {
            _loc1_.§-S§ = this.§-S§;
            if(!_loc3_)
            {
               _loc1_.§[!=§ = this.§[!=§;
               if(_loc2_)
               {
                  addr69:
                  _loc1_.§-O§ = this.§-O§;
                  if(!_loc3_)
                  {
                     _loc1_.§]!%§ = this.§]!%§;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr69);
      }
      
      public function get id() : int
      {
         return this.§1!§;
      }
      
      public function get globalX() : Number
      {
         return this.§>_§;
      }
      
      public function get globalY() : Number
      {
         return this.§]!!§;
      }
      
      public function get §;B§() : Number
      {
         return this.§-S§;
      }
      
      public function get §^!G§() : Number
      {
         return this.§[!=§;
      }
      
      public function get §+T§() : int
      {
         return this.§-O§;
      }
      
      public function get phase() : String
      {
         return this.§8K§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§6[§;
      }
      
      public function get timestamp() : Number
      {
         return this.§]!%§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§-S§ = this.§>_§;
            if(_loc3_ || this)
            {
               this.§[!=§ = this.§]!!§;
               if(!_loc4_)
               {
                  this.§>_§ = param1;
                  if(!_loc4_)
                  {
                     addr55:
                     this.§]!!§ = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      function § !B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§8K§ = param1;
         }
      }
      
      function §;!;§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-O§ = param1;
         }
      }
      
      function §`g§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6[§ = param1;
         }
      }
      
      function §1N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!%§ = param1;
         }
      }
   }
}
