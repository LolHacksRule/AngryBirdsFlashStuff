package §^!Y§
{
   import §4>§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1C§
   {
       
      
      private var §5!6§:Texture;
      
      private var §0!E§:BitmapData;
      
      private var §0!2§:Rectangle;
      
      private var §>!F§:BitmapData;
      
      private var §`Q§:int;
      
      private var §-Z§:int;
      
      private var §'!I§:Number = 1.0;
      
      public function §1C§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§5!6§ = param1;
               addr100:
               while(true)
               {
                  this.§0!E§ = param2;
                  addr53:
                  if(!(_loc8_ && this))
                  {
                     return;
                  }
               }
            }
            addr103:
         }
         loop2:
         while(true)
         {
            this.§0!2§ = param3.clone();
            while(true)
            {
               this.§`Q§ = param4;
               loop4:
               while(true)
               {
                  this.§-Z§ = param5;
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        continue loop4;
                     }
                     if(_loc7_)
                     {
                        continue;
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr100);
               }
               if(_loc8_ && this)
               {
                  continue;
               }
               if(_loc8_)
               {
                  continue loop2;
               }
               §§goto(addr53);
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
      
      public function get pivotX() : int
      {
         return this.§`Q§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§-Z§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§5!6§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§5!6§.height);
         if(_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.§>!F§)
            {
               if(!(_loc1_ && this))
               {
                  this.§>!F§ = new BitmapData(this.§0!2§.width,this.§0!2§.height);
                  do
                  {
                     this.§>!F§.copyPixels(this.§0!E§,this.§0!2§,new Point(0,0));
                  }
                  while(_loc1_);
                  
                  addr86:
               }
               §§goto(addr86);
            }
            return this.§>!F§;
         }
         §§goto(addr86);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`Q§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-Z§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§5!6§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5!6§);
                     addr88:
                     while(true)
                     {
                        §§pop().dispose();
                        addr89:
                        while(true)
                        {
                           this.§5!6§ = null;
                           addr75:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr86:
               }
               loop1:
               while(this.§0!E§)
               {
                  if(_loc1_)
                  {
                     this.§0!E§.dispose();
                  }
                  for(; !_loc2_; this.§0!E§ = null,if(!_loc1_)
                  {
                     continue;
                  },if(!_loc2_)
                  {
                     break loop1;
                  },§§goto(addr86))
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr89);
      }
   }
}
