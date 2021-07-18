package §@b§
{
   import flash.display.BitmapData;
   
   public class §;%§
   {
       
      
      private var §#!I§:Vector.<§0!W§>;
      
      protected var §^d§:BitmapData;
      
      protected var mName:String;
      
      private var §1R§:Number = 1.0;
      
      public function §;%§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§^d§ = param1;
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     this.§#!I§ = new Vector.<§0!W§>();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get §]H§() : int
      {
         return this.§#!I§.length;
      }
      
      public function get § do§() : int
      {
         return this.§^d§.width;
      }
      
      public function get §?!3§() : int
      {
         return this.§^d§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^d§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1R§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^d§)
            {
               if(!_loc1_)
               {
                  addr76:
                  this.§^d§.dispose();
               }
               while(true)
               {
                  this.§^d§ = null;
                  loop1:
                  while(!(_loc1_ && this))
                  {
                     while(true)
                     {
                        this.§#!I§ = new Vector.<§0!W§>();
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr76);
      }
      
      public function §!!5§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^d§ = param1;
         }
      }
      
      public function §%3§(param1:§0!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#!I§.push(param1);
         }
      }
      
      public function §3!]§(param1:String) : §0!W§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!(_loc3_ && this))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() >= this.§#!I§.length)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc4_)
                           {
                              return null;
                           }
                           break;
                        }
                     }
                     else if(this.§#!I§[_loc2_].mName == param1)
                     {
                        break;
                     }
                     §§push(_loc2_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(Number(§§pop()));
            }
            _loc2_ = §§pop();
         }
         return this.§#!I§[_loc2_];
      }
      
      public function §+e§(param1:int) : §0!W§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ || param1))
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           return null;
                        }
                        continue loop0;
                     }
                     return this.§#!I§[param1];
                     addr53:
                  }
               }
               addr84:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr78:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() >= this.§#!I§.length);
               if(_loc2_)
               {
                  continue;
               }
            }
            else
            {
               §§goto(addr78);
            }
            §§goto(addr53);
         }
      }
   }
}
