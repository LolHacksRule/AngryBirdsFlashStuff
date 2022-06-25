package §<8§
{
   import flash.display.BitmapData;
   
   public class §,j§
   {
       
      
      private var §8Z§:Vector.<§!3§>;
      
      protected var §1!w§:BitmapData;
      
      protected var mName:String;
      
      private var §?z§:Number = 1.0;
      
      public function §,j§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§1!w§ = param1;
               loop1:
               while(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     this.§8Z§ = new Vector.<§!3§>();
                     if(!(_loc3_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get §'M§() : int
      {
         return this.§8Z§.length;
      }
      
      public function get §9! §() : int
      {
         return this.§1!w§.width;
      }
      
      public function get §1"$§() : int
      {
         return this.§1!w§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§1!w§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?z§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§1!w§)
            {
               if(!_loc2_)
               {
                  addr70:
                  this.§1!w§.dispose();
               }
               while(true)
               {
                  this.§1!w§ = null;
                  loop1:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        this.§8Z§ = new Vector.<§!3§>();
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr43);
         }
         §§goto(addr70);
      }
      
      public function §+]§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§1!w§ = param1;
         }
      }
      
      public function §"n§(param1:§!3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8Z§.push(param1);
         }
      }
      
      public function §,!A§(param1:String) : §!3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() >= this.§8Z§.length)
                     {
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        if(_loc4_ || this)
                        {
                           if(!(_loc3_ && this))
                           {
                              return null;
                           }
                           break;
                        }
                     }
                     else if(this.§8Z§[_loc2_].mName == param1)
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
         return this.§8Z§[_loc2_];
      }
      
      public function §-v§(param1:int) : §!3§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§goto(addr71);
                        }
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        §§push(§§pop() >= this.§8Z§.length);
                        continue loop0;
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                        addr93:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr93:
                     }
                     return this.§8Z§[param1];
                  }
               }
               §§goto(addr93);
            }
         }
         addr71:
         return null;
      }
   }
}
