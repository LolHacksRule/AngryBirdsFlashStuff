package §_-6E§
{
   import flash.display.BitmapData;
   
   public class §_-UU§
   {
       
      
      private var §_-L3§:Vector.<§_-0j§>;
      
      protected var §_-e1§:BitmapData;
      
      protected var mName:String;
      
      private var §_-XE§:Number = 1.0;
      
      public function §_-UU§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§_-e1§ = param1;
               while(!_loc3_)
               {
                  this.§_-L3§ = new Vector.<§_-0j§>();
                  if(!_loc3_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function get §_-0w§() : int
      {
         return this.§_-L3§.length;
      }
      
      public function get §_-09q§() : int
      {
         return this.§_-e1§.width;
      }
      
      public function get §_-cD§() : int
      {
         return this.§_-e1§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-e1§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-XE§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§_-e1§)
            {
               while(true)
               {
                  this.§_-e1§.dispose();
                  addr78:
                  while(true)
                  {
                     this.§_-e1§ = null;
                     addr71:
                     while(true)
                     {
                     }
                  }
                  addr59:
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr66:
               }
            }
            while(true)
            {
               this.§_-L3§ = new Vector.<§_-0j§>();
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  §§goto(addr59);
               }
               §§goto(addr78);
            }
            §§goto(addr66);
         }
         §§goto(addr71);
      }
      
      public function §_-gb§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-e1§ = param1;
         }
      }
      
      public function §_-Iw§(param1:§_-0j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-L3§.push(param1);
         }
      }
      
      public function §_-sb§(param1:String) : §_-0j§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§_-L3§.length)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc3_ || param1))
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               if(this.§_-L3§[_loc2_].mName == param1)
               {
                  §§goto(addr97);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr79);
                  }
               }
            }
            §§goto(addr79);
         }
         if(_loc3_ || _loc2_)
         {
            return null;
         }
         addr97:
         return this.§_-L3§[_loc2_];
      }
      
      public function §_-c6§(param1:int) : §_-0j§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           return null;
                        }
                        if(_loc3_)
                        {
                           addr76:
                           break;
                        }
                        §§push(§§pop() >= this.§_-L3§.length);
                        continue loop0;
                        if(!(_loc2_ && _loc2_))
                        {
                           continue;
                        }
                        addr89:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr89:
                     }
                     return this.§_-L3§[param1];
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr76);
      }
   }
}
