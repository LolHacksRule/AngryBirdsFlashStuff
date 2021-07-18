package § ! §
{
   import §%q§.Texture;
   import §6![§.§1!J§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8-§
   {
       
      
      private var §'!t§:Texture;
      
      private var §'y§:BitmapData;
      
      private var §@E§:Rectangle;
      
      private var §1!!§:BitmapData;
      
      private var §=$§:int;
      
      private var §0I§:int;
      
      private var §6!r§:Number = 1.0;
      
      public function §8-§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.§'!t§ = param1;
               loop1:
               while(true)
               {
                  this.§'y§ = param2;
                  addr96:
                  while(true)
                  {
                     this.§@E§ = param3.clone();
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§=$§ = param4;
            §§goto(addr61);
         }
         §§goto(addr32);
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get texture() : Texture
      {
         return this.§'!t§;
      }
      
      public function get pivotX() : int
      {
         return this.§=$§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§0I§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'!t§.width);
         if(_loc1_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§'!t§.height);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§1!!§)
            {
               loop0:
               while(true)
               {
                  this.§1!!§ = new BitmapData(this.§@E§.width,this.§@E§.height);
                  addr86:
                  while(true)
                  {
                     this.§1!!§.copyPixels(this.§'y§,this.§@E§,new Point(0,0));
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_ || _loc1_)
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
            return this.§1!!§;
         }
         §§goto(addr86);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=$§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§0I§ = param1;
         }
      }
      
      public function §'h§(param1:Boolean = false, param2:Boolean = true) : §1!J§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§1!J§ = new §1!J§(this.texture,param1,param2);
         if(_loc5_ || param1)
         {
            _loc3_.pivotX = -this.pivotX;
            if(!_loc6_)
            {
               _loc3_.pivotY = -this.pivotY;
               if(_loc5_ || param2)
               {
               }
               §§goto(addr80);
            }
            _loc3_.scaleX = _loc3_.scaleY = this.scale;
         }
         addr80:
         return _loc3_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'!t§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'!t§);
                     addr88:
                     while(true)
                     {
                        §§pop().dispose();
                        addr89:
                        while(true)
                        {
                           this.§'!t§ = null;
                           addr65:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr86:
               }
               loop1:
               for(; this.§'y§; §§goto(addr65))
               {
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     this.§'y§.dispose();
                     while(true)
                     {
                        this.§'y§ = null;
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr89);
                     }
                     addr60:
                  }
                  §§goto(addr60);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr60);
      }
   }
}
