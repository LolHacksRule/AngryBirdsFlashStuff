package starling.events
{
   import §!!U§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[#W§
   {
      
      private static var §#!O§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#!O§ = new Matrix();
         }
      }
      
      private var §,#R§:int;
      
      private var §;!u§:Number;
      
      private var §`"g§:Number;
      
      private var §+#8§:Number;
      
      private var §%"l§:Number;
      
      private var §4"7§:int;
      
      private var §`!a§:String;
      
      private var §%!c§:DisplayObject;
      
      private var §`#K§:Number;
      
      public function §[#W§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super();
            if(!(_loc8_ && param1))
            {
               this.§,#R§ = param1;
               if(_loc7_)
               {
                  this.§;!u§ = this.§+#8§ = param2;
                  if(_loc7_)
                  {
                     addr58:
                     this.§`"g§ = this.§%"l§ = param3;
                     if(_loc7_)
                     {
                        this.§4"7§ = 0;
                        addr69:
                     }
                     while(true)
                     {
                        this.§`!a§ = param4;
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr69);
            }
            addr102:
            while(true)
            {
               this.§%!c§ = param5;
               if(!(_loc8_ && param2))
               {
                  if(!_loc8_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §9y§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§;!u§,this.§`"g§);
         if(!(_loc3_ && _loc3_))
         {
            this.§%!c§.root.§^">§(param1,§#!O§);
         }
         return §#!O§.transformPoint(_loc2_);
      }
      
      public function §>#S§(param1:DisplayObject) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Point = new Point(this.§+#8§,this.§%"l§);
         if(!(_loc3_ && _loc3_))
         {
            this.§%!c§.root.§^">§(param1,§#!O§);
         }
         return §#!O§.transformPoint(_loc2_);
      }
      
      public function clone() : §[#W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§[#W§ = new §[#W§(this.§,#R§,this.§;!u§,this.§`"g§,this.§`!a§,this.§%!c§);
         if(_loc3_)
         {
            _loc1_.§+#8§ = this.§+#8§;
            while(true)
            {
               _loc1_.§%"l§ = this.§%"l§;
               while(_loc3_ || _loc1_)
               {
                  _loc1_.§4"7§ = this.§4"7§;
                  while(_loc3_ || this)
                  {
                     _loc1_.§`#K§ = this.§`#K§;
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     return _loc1_;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function get id() : int
      {
         return this.§,#R§;
      }
      
      public function get globalX() : Number
      {
         return this.§;!u§;
      }
      
      public function get globalY() : Number
      {
         return this.§`"g§;
      }
      
      public function get §&!7§() : Number
      {
         return this.§+#8§;
      }
      
      public function get §!!#§() : Number
      {
         return this.§%"l§;
      }
      
      public function get §`l§() : int
      {
         return this.§4"7§;
      }
      
      public function get phase() : String
      {
         return this.§`!a§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§%!c§;
      }
      
      public function get timestamp() : Number
      {
         return this.§`#K§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§+#8§ = this.§;!u§;
         }
         while(true)
         {
            this.§%"l§ = this.§`"g§;
            while(!(_loc4_ && param1))
            {
               this.§;!u§ = param1;
               while(_loc3_)
               {
                  this.§`"g§ = param2;
                  if(!(_loc4_ && param1))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      function §%"8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!a§ = param1;
         }
      }
      
      function §4#D§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4"7§ = param1;
         }
      }
      
      function §2!`§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%!c§ = param1;
         }
      }
      
      function §2S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`#K§ = param1;
         }
      }
   }
}
