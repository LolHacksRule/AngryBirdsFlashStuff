package §;"7§
{
   import §0!%§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+!I§
   {
       
      
      private var §=#§:Texture;
      
      private var §`"4§:BitmapData;
      
      private var §!!X§:Rectangle;
      
      private var §-s§:BitmapData;
      
      private var §=;§:int;
      
      private var §62§:int;
      
      private var §=9§:Number = 1.0;
      
      public function §+!I§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§=#§ = param1;
            loop1:
            while(true)
            {
               this.§`"4§ = param2;
               while(true)
               {
                  this.§!!X§ = param3.clone();
                  loop3:
                  for(; _loc7_; if(_loc8_ && this)
                  {
                     continue;
                  },if(!_loc7_)
                  {
                     continue loop1;
                  },§§goto(addr60))
                  {
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     this.§=;§ = param4;
                     loop4:
                     while(true)
                     {
                        this.§62§ = param5;
                        while(true)
                        {
                           if(_loc7_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                           addr60:
                           this.§=9§ = param6;
                           if(_loc7_ || param2)
                           {
                              return;
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
      
      public function get pivotX() : int
      {
         return this.§=;§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§62§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=#§.width);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=#§.height);
         if(!_loc2_)
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
            if(!this.§-s§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§-s§ = new BitmapData(this.§!!X§.width,this.§!!X§.height);
                  do
                  {
                     this.§-s§.copyPixels(this.§`"4§,this.§!!X§,new Point(0,0));
                  }
                  while(_loc1_);
                  
                  addr81:
               }
               §§goto(addr81);
            }
            return this.§-s§;
         }
         §§goto(addr81);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=;§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§62§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§=#§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr103:
                     this.§=#§.dispose();
                     loop4:
                     while(true)
                     {
                        this.§=#§ = null;
                        addr71:
                        addr78:
                        while(!(_loc1_ || _loc1_))
                        {
                           continue loop4;
                        }
                     }
                     addr104:
                  }
                  §§goto(addr104);
               }
               while(true)
               {
                  if(this.§`"4§)
                  {
                     loop1:
                     do
                     {
                        this.§`"4§.dispose();
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§`"4§ = null;
                           if(_loc1_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr71);
                     }
                     while(!(_loc1_ || _loc1_));
                     
                     break;
                  }
                  break;
                  §§goto(addr78);
               }
               return;
            }
         }
         §§goto(addr103);
      }
   }
}
