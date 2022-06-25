package §`u§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var include:Vector.<§#!7§>;
      
      protected var §%!J§:BitmapData;
      
      protected var mName:String;
      
      private var §7!H§:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.§%!J§ = param1;
               while(!_loc3_)
               {
                  this.include = new Vector.<§#!7§>();
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get §^h§() : int
      {
         return this.include.length;
      }
      
      public function get §0!D§() : int
      {
         return this.§%!J§.width;
      }
      
      public function get §>!]§() : int
      {
         return this.§%!J§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§%!J§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7!H§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§%!J§)
            {
               while(true)
               {
                  this.§%!J§.dispose();
                  while(true)
                  {
                     this.§%!J§ = null;
                     addr67:
                     while(_loc2_)
                     {
                     }
                  }
               }
               addr74:
            }
            while(true)
            {
               this.include = new Vector.<§#!7§>();
               if(!_loc1_)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               §§goto(addr67);
            }
         }
      }
      
      public function §"I§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!J§ = param1;
         }
      }
      
      public function §^!E§(param1:§#!7§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.include.push(param1);
         }
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(§§pop() >= this.include.length)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  while(!_loc4_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr69:
               }
               else if(this.include[_loc2_].mName == param1)
               {
                  if(!_loc3_)
                  {
                     return this.include[_loc2_];
                  }
                  §§goto(addr88);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr69);
            }
         }
         return null;
      }
      
      public function §-!k§(param1:int) : §#!7§
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
               addr89:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           addr78:
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 return null;
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           return this.include[param1];
                           addr76:
                        }
                        addr77:
                     }
                  }
                  addr102:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr87:
         }
         while(true)
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() >= this.include.length);
               if(_loc2_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr76);
                  }
                  else
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr78);
            }
            else
            {
               §§goto(addr87);
            }
         }
      }
   }
}
