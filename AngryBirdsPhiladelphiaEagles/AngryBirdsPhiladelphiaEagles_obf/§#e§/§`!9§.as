package §#e§
{
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!9§
   {
       
      
      private var §-`§:Texture;
      
      private var § if§:BitmapData;
      
      private var §+1§:Rectangle;
      
      private var §6m§:BitmapData;
      
      private var §%O§:int;
      
      private var §&!I§:int;
      
      private var §6-§:Number = 1.0;
      
      public function §`!9§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         super();
         do
         {
            this.§-`§ = param1;
            this.§ if§ = param2;
            this.§+1§ = param3.clone();
            this.§%O§ = param4;
         }
         while(_loc7_ && this);
         
         this.§&!I§ = param5;
         this.§6-§ = param6;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
      
      public function get pivotX() : int
      {
         return this.§%O§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§&!I§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-`§.width);
         if(_loc1_ || _loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-`§.height);
         if(_loc2_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§6m§)
            {
               loop0:
               while(true)
               {
                  this.§6m§ = new BitmapData(this.§+1§.width,this.§+1§.height);
                  addr81:
                  while(true)
                  {
                     this.§6m§.copyPixels(this.§ if§,this.§+1§,new Point(0,0));
                     if(_loc2_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return this.§6m§;
         }
         §§goto(addr81);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%O§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!I§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-`§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr75:
                  this.§-`§.dispose();
                  this.§-`§ = null;
               }
               if(this.§ if§)
               {
                  if(!(_loc2_ && this))
                  {
                     this.§ if§.dispose();
                  }
                  this.§ if§ = null;
               }
               return;
            }
         }
         §§goto(addr75);
      }
   }
}
