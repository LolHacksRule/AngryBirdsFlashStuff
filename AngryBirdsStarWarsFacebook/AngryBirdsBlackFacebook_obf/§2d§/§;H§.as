package §2d§
{
   import flash.display.BitmapData;
   
   public class §;H§
   {
       
      
      private var §0!E§:Vector.<§%$§>;
      
      protected var §>">§:BitmapData;
      
      protected var mName:String;
      
      private var §8"2§:Number = 1.0;
      
      public function §;H§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§>">§ = param1;
               §§goto(addr70);
            }
         }
         addr70:
         while(true)
         {
            this.§0!E§ = new Vector.<§%$§>();
            if(_loc3_ || param1)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §0#a§() : int
      {
         return this.§0!E§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§>">§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§>">§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>">§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8"2§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§>">§)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§>">§.dispose();
               }
               while(true)
               {
                  this.§>">§ = null;
                  addr52:
                  loop1:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               this.§0!E§ = new Vector.<§%$§>();
               if(!(_loc2_ && this))
               {
                  break;
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §,e§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>">§ = param1;
         }
      }
      
      public function §9!t§(param1:§%$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!E§.push(param1);
         }
      }
      
      public function § !D§(param1:String) : §%$§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= this.§0!E§.length)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     while(_loc4_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr68:
                  }
                  else if(this.§0!E§[_loc2_].name == param1)
                  {
                     if(_loc3_ || param1)
                     {
                        return this.§0!E§[_loc2_];
                     }
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     addr67:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr68);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr67);
         }
         return null;
      }
      
      public function §4y§(param1:int) : §%$§
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
               addr81:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           return null;
                        }
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return this.§0!E§[param1];
                     addr49:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr79:
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() >= this.§0!E§.length);
               if(_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  §§goto(addr81);
               }
               §§goto(addr49);
            }
            else
            {
               §§goto(addr79);
            }
         }
      }
   }
}
