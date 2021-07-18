package starling.events
{
   import §_-LP§.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-aG§
   {
       
      
      private var §_-dZ§:int;
      
      private var §_-l2§:Number;
      
      private var §_-t-§:Number;
      
      private var §_-n6§:Number;
      
      private var §_-36§:Number;
      
      private var §_-Iu§:int;
      
      private var §_-kH§:String;
      
      private var §_-Cc§:DisplayObject;
      
      private var §_-XQ§:Number;
      
      public function §_-aG§(param1:int, param2:Number, param3:Number, param4:String, param5:DisplayObject)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            this.§_-dZ§ = param1;
            this.§_-l2§ = this.§_-n6§ = param2;
            if(!(_loc7_ && this))
            {
               this.§_-t-§ = this.§_-36§ = param3;
               if(_loc8_ || param2)
               {
                  this.§_-Iu§ = 0;
                  if(!_loc7_)
                  {
                     addr72:
                     this.§_-kH§ = param4;
                     if(_loc7_)
                     {
                     }
                     §§goto(addr80);
                  }
                  this.§_-Cc§ = param5;
               }
               addr80:
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function §_-Wh§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-l2§,this.§_-t-§);
         var _loc3_:Matrix = this.§_-Cc§.root.§_-OX§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function §_-h-§(param1:DisplayObject) : Point
      {
         var _loc2_:Point = new Point(this.§_-n6§,this.§_-36§);
         var _loc3_:Matrix = this.§_-Cc§.root.§_-OX§(param1);
         return _loc3_.transformPoint(_loc2_);
      }
      
      public function clone() : §_-aG§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-aG§ = new §_-aG§(this.§_-dZ§,this.§_-l2§,this.§_-t-§,this.§_-kH§,this.§_-Cc§);
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§_-n6§ = this.§_-n6§;
            if(!_loc2_)
            {
               _loc1_.§_-36§ = this.§_-36§;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.§_-Iu§ = this.§_-Iu§;
                  if(_loc3_)
                  {
                     addr72:
                     _loc1_.§_-XQ§ = this.§_-XQ§;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get id() : int
      {
         return this.§_-dZ§;
      }
      
      public function get globalX() : Number
      {
         return this.§_-l2§;
      }
      
      public function get globalY() : Number
      {
         return this.§_-t-§;
      }
      
      public function get §_-8M§() : Number
      {
         return this.§_-n6§;
      }
      
      public function get §_-rA§() : Number
      {
         return this.§_-36§;
      }
      
      public function get §_-Y7§() : int
      {
         return this.§_-Iu§;
      }
      
      public function get phase() : String
      {
         return this.§_-kH§;
      }
      
      public function get target() : DisplayObject
      {
         return this.§_-Cc§;
      }
      
      public function get timestamp() : Number
      {
         return this.§_-XQ§;
      }
      
      function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§_-n6§ = this.§_-l2§;
            if(!_loc3_)
            {
               this.§_-36§ = this.§_-t-§;
               if(_loc4_)
               {
                  this.§_-l2§ = param1;
                  if(_loc4_)
                  {
                     this.§_-t-§ = param2;
                  }
               }
            }
         }
      }
      
      function §_-RP§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-kH§ = param1;
         }
      }
      
      function §_-xv§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Iu§ = param1;
         }
      }
      
      function §_-Lb§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-Cc§ = param1;
         }
      }
      
      function §_-vL§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-XQ§ = param1;
         }
      }
   }
}
