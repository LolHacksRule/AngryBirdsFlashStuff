package §8s§
{
   import flash.display.BitmapData;
   
   public class §`H§
   {
       
      
      private var §-3§:Vector.<§8"§>;
      
      protected var §@C§:BitmapData;
      
      protected var mName:String;
      
      private var §=9§:Number = 1.0;
      
      public function §`H§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§@C§ = param1;
               do
               {
                  this.§-3§ = new Vector.<§8"§>();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §%!q§() : int
      {
         return this.§-3§.length;
      }
      
      public function get §>!Y§() : int
      {
         return this.§@C§.width;
      }
      
      public function get §^V§() : int
      {
         return this.§@C§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@C§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=9§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§@C§)
            {
               while(true)
               {
                  this.§@C§.dispose();
                  addr84:
                  loop3:
                  while(true)
                  {
                     this.§@C§ = null;
                     addr60:
                     addr77:
                     while(!(_loc2_ || _loc2_))
                     {
                        continue loop3;
                     }
                  }
                  addr48:
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
            while(true)
            {
               this.§-3§ = new Vector.<§8"§>();
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr48);
               }
               §§goto(addr60);
               §§goto(addr77);
            }
            §§goto(addr55);
         }
         §§goto(addr84);
      }
      
      public function §^">§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@C§ = param1;
         }
      }
      
      public function §72§(param1:§8"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-3§.push(param1);
         }
      }
      
      public function §#!Q§(param1:String) : §8"§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(§§pop() >= this.§-3§.length)
                  {
                     if(!(_loc4_ || _loc2_))
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        return null;
                     }
                     addr103:
                  }
                  else if(this.§-3§[_loc2_].mName == param1)
                  {
                     if(!(_loc3_ && param1))
                     {
                        break;
                     }
                     §§goto(addr103);
                  }
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               §§push(Number(§§pop()));
            }
            _loc2_ = §§pop();
         }
         return this.§-3§[_loc2_];
      }
      
      public function §+>§(param1:int) : §8"§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(_loc2_ || param1)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        addr65:
                        if(_loc2_)
                        {
                           return null;
                        }
                        §§push(§§pop() >= this.§-3§.length);
                        continue loop0;
                        if(!_loc3_)
                        {
                           continue;
                        }
                        addr88:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr88:
                     }
                     return this.§-3§[param1];
                  }
               }
               §§goto(addr88);
            }
         }
         §§goto(addr65);
      }
   }
}
