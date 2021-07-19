package §4W§
{
   import §2!-§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>c§
   {
       
      
      private var §[!H§:Texture;
      
      private var §5b§:BitmapData;
      
      private var §6U§:Rectangle;
      
      private var §^!I§:BitmapData;
      
      private var §^D§:int;
      
      private var §%B§:int;
      
      private var §7<§:Number = 1.0;
      
      public function §>c§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§[!H§ = param1;
               while(true)
               {
                  this.§5b§ = param2;
                  continue loop0;
                  addr71:
                  if(!(_loc7_ && param2))
                  {
                     this.§%B§ = param5;
                     do
                     {
                        if(!(_loc7_ && this))
                        {
                           continue;
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc8_)
                           {
                              addr64:
                              if(!(_loc8_ || param1))
                              {
                                 break;
                              }
                              §§goto(addr71);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§^D§ = param4;
                                 continue loop4;
                              }
                              addr84:
                           }
                        }
                        continue loop0;
                     }
                     while(this.§7<§ = param6, !(_loc8_ || param3));
                     
                     return;
                     addr35:
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
      
      public function get pivotX() : int
      {
         return this.§^D§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§%B§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!H§.width);
         if(_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!H§.height);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§^!I§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§^!I§ = new BitmapData(this.§6U§.width,this.§6U§.height);
                  do
                  {
                     this.§^!I§.copyPixels(this.§5b§,this.§6U§,new Point(0,0));
                  }
                  while(_loc2_ && _loc1_);
                  
                  addr90:
               }
               §§goto(addr90);
            }
            return this.§^!I§;
         }
         §§goto(addr90);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^D§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%B§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[!H§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!H§);
                     addr94:
                     while(true)
                     {
                        §§pop().dispose();
                        addr95:
                        while(true)
                        {
                           this.§[!H§ = null;
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                     addr54:
                     loop2:
                     while(true)
                     {
                        if(_loc1_ && this)
                        {
                           continue loop0;
                        }
                        this.§5b§.dispose();
                        loop3:
                        while(!(_loc1_ && _loc1_))
                        {
                           while(true)
                           {
                              this.§5b§ = null;
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§goto(addr20);
                                    }
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr95);
                  }
               }
               while(true)
               {
                  if(this.§5b§)
                  {
                     §§goto(addr54);
                  }
                  break;
                  §§goto(addr76);
               }
               addr20:
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr71);
      }
   }
}
