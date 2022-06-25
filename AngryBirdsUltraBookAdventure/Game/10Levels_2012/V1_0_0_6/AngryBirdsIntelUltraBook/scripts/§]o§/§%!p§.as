package §]o§
{
   import flash.display.BitmapData;
   
   public class §%!p§
   {
       
      
      private var §7-§:Vector.<§^!9§>;
      
      protected var §0g§:BitmapData;
      
      protected var mName:String;
      
      private var §'!I§:Number = 1.0;
      
      public function §%!p§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§0g§ = param1;
               while(!_loc3_)
               {
                  this.§7-§ = new Vector.<§^!9§>();
                  if(!_loc3_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function get §[C§() : int
      {
         return this.§7-§.length;
      }
      
      public function get §'!+§() : int
      {
         return this.§0g§.width;
      }
      
      public function get §?x§() : int
      {
         return this.§0g§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§0g§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'!I§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§0g§)
            {
               loop0:
               while(true)
               {
                  this.§0g§.dispose();
                  addr78:
                  while(true)
                  {
                     this.§0g§ = null;
                     addr69:
                     addr71:
                     while(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               this.§7-§ = new Vector.<§^!9§>();
               if(_loc1_)
               {
                  if(_loc1_ || _loc1_)
                  {
                     break;
                  }
                  §§goto(addr78);
               }
               §§goto(addr69);
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function §37§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0g§ = param1;
         }
      }
      
      public function §8!U§(param1:§^!9§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7-§.push(param1);
         }
      }
      
      public function §,T§(param1:String) : §^!9§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || param1)
            {
               if(§§pop() >= this.§7-§.length)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(!_loc3_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr68:
               }
               else if(this.§7-§[_loc2_].mName == param1)
               {
                  if(_loc3_)
                  {
                     return this.§7-§[_loc2_];
                  }
                  §§goto(addr87);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc3_)
                     {
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr68);
                     }
                     addr67:
                  }
               }
            }
            §§goto(addr67);
         }
         return null;
      }
      
      public function §[!r§(param1:int) : §^!9§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           return null;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                        addr31:
                        §§push(§§pop() >= this.§7-§.length);
                        if(_loc2_ || _loc2_)
                        {
                           continue;
                        }
                        addr88:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr31);
                        }
                        addr88:
                     }
                     return this.§7-§[param1];
                     addr62:
                  }
               }
               §§goto(addr88);
            }
            addr77:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§goto(addr31);
            }
            else
            {
               §§goto(addr77);
            }
            §§goto(addr88);
         }
      }
   }
}
