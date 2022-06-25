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
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§%!J§ = param1;
            while(!_loc3_)
            {
               this.include = new Vector.<§#!7§>();
               if(_loc2_)
               {
                  return;
               }
            }
         }
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
         if(!_loc2_)
         {
            this.§7!H§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§%!J§)
            {
               while(true)
               {
                  this.§%!J§.dispose();
                  addr72:
                  while(true)
                  {
                     this.§%!J§ = null;
                     addr63:
                     while(true)
                     {
                     }
                  }
               }
               addr68:
            }
            while(true)
            {
               this.include = new Vector.<§#!7§>();
               if(!_loc1_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
            }
            return;
         }
         §§goto(addr72);
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
         if(!_loc2_)
         {
            this.include.push(param1);
         }
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         do
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  if(§§pop() >= this.include.length)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        return null;
                     }
                     loop1:
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.include[_loc2_].mName == param1)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr78);
         }
         while(!(_loc3_ && _loc3_));
         
         return this.include[_loc2_];
      }
      
      public function §-!k§(param1:int) : §#!7§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc2_ || param1)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           addr56:
                           while(§§pop())
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              addr78:
                              if(!_loc3_)
                              {
                                 return null;
                              }
                              continue loop0;
                           }
                           return this.include[param1];
                           addr54:
                        }
                     }
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
         §§goto(addr78);
      }
   }
}
