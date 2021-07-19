package §'!H§
{
   import flash.display.BitmapData;
   
   public class §3^§
   {
       
      
      private var §97§:Vector.<§?m§>;
      
      protected var §4<§:BitmapData;
      
      protected var mName:String;
      
      private var §7<§:Number = 1.0;
      
      public function §3^§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§4<§ = param1;
               while(_loc3_)
               {
                  this.§97§ = new Vector.<§?m§>();
                  if(_loc3_ || _loc2_)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function get §3!L§() : int
      {
         return this.§97§.length;
      }
      
      public function get §8!J§() : int
      {
         return this.§4<§.width;
      }
      
      public function get §<!%§() : int
      {
         return this.§4<§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4<§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7<§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§4<§)
            {
               while(true)
               {
                  this.§4<§.dispose();
                  addr84:
                  while(true)
                  {
                     this.§4<§ = null;
                     addr77:
                     while(true)
                     {
                     }
                  }
                  addr55:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
            while(true)
            {
               this.§97§ = new Vector.<§?m§>();
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               if(!(_loc1_ && this))
               {
                  §§goto(addr55);
               }
               §§goto(addr84);
            }
            §§goto(addr62);
         }
         §§goto(addr77);
      }
      
      public function §,j§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4<§ = param1;
         }
      }
      
      public function §5!U§(param1:§?m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§97§.push(param1);
         }
      }
      
      public function §,2§(param1:String) : §?m§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(_loc3_)
               {
                  if(§§pop() >= this.§97§.length)
                  {
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc3_ || this))
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.§97§[_loc2_].mName == param1)
                  {
                     §§goto(addr92);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr64);
         }
         if(_loc3_)
         {
            return null;
         }
         addr92:
         return this.§97§[_loc2_];
      }
      
      public function §<f§(param1:int) : §?m§
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
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           return null;
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(§§pop() >= this.§97§.length);
                        continue loop0;
                        if(!(_loc2_ && _loc3_))
                        {
                           continue;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr84:
                     }
                     return this.§97§[param1];
                     addr58:
                  }
               }
               §§goto(addr84);
            }
            addr78:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr47);
            }
            else
            {
               §§goto(addr78);
            }
            §§goto(addr84);
         }
      }
   }
}
