package §,I§
{
   import flash.display.BitmapData;
   
   public class §5i§
   {
       
      
      private var §5f§:Vector.<§7!c§>;
      
      protected var §%!y§:BitmapData;
      
      protected var mName:String;
      
      private var §?a§:Number = 1.0;
      
      public function §5i§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            do
            {
               this.§%!y§ = param1;
               do
               {
                  this.§5f§ = new Vector.<§7!c§>();
               }
               while(!(_loc2_ || param1));
               
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get §6!]§() : int
      {
         return this.§5f§.length;
      }
      
      public function get §,r§() : int
      {
         return this.§%!y§.width;
      }
      
      public function get §[C§() : int
      {
         return this.§%!y§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§%!y§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?a§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§%!y§)
            {
               loop0:
               while(true)
               {
                  this.§%!y§.dispose();
                  while(true)
                  {
                     this.§%!y§ = null;
                     loop2:
                     while(!(_loc1_ && this))
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§5f§ = new Vector.<§7!c§>();
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr43);
      }
      
      public function §-!L§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!y§ = param1;
         }
      }
      
      public function §0!2§(param1:§7!c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5f§.push(param1);
         }
      }
      
      public function §7M§(param1:String) : §7!c§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() >= this.§5f§.length)
               {
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc4_ || _loc2_)
                  {
                     return null;
                  }
                  addr108:
               }
               else if(this.§5f§[_loc2_].mName == param1)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr108);
               }
               §§push(_loc2_);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ || _loc3_)
                  {
                  }
                  addr80:
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr80);
         }
         return this.§5f§[_loc2_];
      }
      
      public function §["7§(param1:int) : §7!c§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        addr61:
                        if(!_loc2_)
                        {
                           return null;
                        }
                        continue loop0;
                     }
                     return this.§5f§[param1];
                     addr53:
                  }
               }
               addr79:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
   }
}
