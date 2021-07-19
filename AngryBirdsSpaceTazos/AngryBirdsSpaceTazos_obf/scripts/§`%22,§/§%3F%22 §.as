package §`",§
{
   import flash.display.BitmapData;
   
   public class §?" §
   {
       
      
      private var §"!z§:Vector.<§1!v§>;
      
      protected var § e§:BitmapData;
      
      protected var mName:String;
      
      private var §=T§:Number = 1.0;
      
      public function §?" §(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
         }
         do
         {
            this.§ e§ = param1;
            do
            {
               this.§"!z§ = new Vector.<§1!v§>();
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
      }
      
      public function get §,"6§() : int
      {
         return this.§"!z§.length;
      }
      
      public function get §&q§() : int
      {
         return this.§ e§.width;
      }
      
      public function get §"!;§() : int
      {
         return this.§ e§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ e§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=T§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§ e§)
            {
               loop2:
               while(true)
               {
                  this.§ e§.dispose();
                  loop3:
                  while(true)
                  {
                     this.§ e§ = null;
                     addr52:
                     addr71:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                  }
               }
               addr75:
            }
            while(true)
            {
               this.§"!z§ = new Vector.<§1!v§>();
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               §§goto(addr52);
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §%5§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ e§ = param1;
         }
      }
      
      public function §%D§(param1:§1!v§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!z§.push(param1);
         }
      }
      
      public function §&!#§(param1:String) : §1!v§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= this.§"!z§.length)
                  {
                     if(_loc3_)
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
                     addr58:
                  }
                  else if(this.§"!z§[_loc2_].mName == param1)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        return this.§"!z§[_loc2_];
                     }
                     §§goto(addr92);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     addr57:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr58);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr57);
         }
         return null;
      }
      
      public function §"!i§(param1:int) : §1!v§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!(_loc2_ && this))
                        {
                           return null;
                        }
                        continue loop0;
                        addr32:
                        §§push(§§pop() >= this.§"!z§.length);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr32);
                        }
                        addr84:
                     }
                     return this.§"!z§[param1];
                     addr48:
                  }
               }
               §§goto(addr84);
            }
            addr63:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§goto(addr32);
            }
            else
            {
               §§goto(addr63);
            }
            §§goto(addr84);
         }
      }
   }
}
