package §-w§
{
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+W§
   {
       
      
      private var §[!5§:Texture;
      
      private var §4!R§:BitmapData;
      
      private var §3E§:Rectangle;
      
      private var §]!P§:BitmapData;
      
      private var §&5§:int;
      
      private var §1!O§:int;
      
      private var §'8§:Number = 1.0;
      
      public function §+W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            while(true)
            {
               this.§[!5§ = param1;
            }
            addr103:
         }
         loop1:
         while(true)
         {
            this.§4!R§ = param2;
            loop2:
            while(true)
            {
               this.§3E§ = param3.clone();
               loop3:
               while(!_loc8_)
               {
                  this.§&5§ = param4;
                  loop4:
                  while(true)
                  {
                     this.§1!O§ = param5;
                     while(true)
                     {
                        if(_loc7_ || param1)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop4;
                        addr77:
                        this.§'8§ = param6;
                        if(!(_loc8_ && param1))
                        {
                           if(!_loc8_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
               }
               §§goto(addr103);
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function get pivotX() : int
      {
         return this.§&5§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§1!O§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!5§.width);
         if(_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[!5§.height);
         if(!(_loc1_ && this))
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!this.§]!P§)
            {
               if(_loc1_)
               {
                  this.§]!P§ = new BitmapData(this.§3E§.width,this.§3E§.height);
                  do
                  {
                     this.§]!P§.copyPixels(this.§4!R§,this.§3E§,new Point(0,0));
                  }
                  while(!(_loc1_ || this));
                  
                  addr85:
               }
               §§goto(addr85);
            }
            return this.§]!P§;
         }
         §§goto(addr85);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&5§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1!O§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§[!5§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!5§);
                     addr103:
                     while(true)
                     {
                        §§pop().dispose();
                        addr104:
                        addr90:
                        while(true)
                        {
                           this.§[!5§ = null;
                           continue loop0;
                        }
                        addr90:
                     }
                  }
               }
               while(true)
               {
                  if(this.§4!R§)
                  {
                     loop2:
                     do
                     {
                        this.§4!R§.dispose();
                        while(!(_loc2_ && _loc1_))
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              this.§4!R§ = null;
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue;
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr83);
                     }
                     while(_loc2_ && _loc2_);
                     
                     addr36:
                     break;
                  }
                  break;
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr103);
         }
         §§goto(addr36);
      }
   }
}
