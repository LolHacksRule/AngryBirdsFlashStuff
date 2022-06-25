package §6w§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var §#!E§:Vector.<§<>§>;
      
      protected var §+#§:BitmapData;
      
      protected var mName:String;
      
      private var §?C§:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
         }
         while(true)
         {
            this.§+#§ = param1;
            while(!_loc2_)
            {
               this.§#!E§ = new Vector.<§<>§>();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get §5!^§() : int
      {
         return this.§#!E§.length;
      }
      
      public function get §3f§() : int
      {
         return this.§+#§.width;
      }
      
      public function get §6$§() : int
      {
         return this.§+#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§+#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§?C§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§+#§)
            {
               if(!_loc1_)
               {
                  addr79:
                  this.§+#§.dispose();
               }
               while(true)
               {
                  this.§+#§ = null;
                  loop1:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        this.§#!E§ = new Vector.<§<>§>();
                        if(!(_loc1_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr39);
         }
         §§goto(addr79);
      }
      
      public function §'!K§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+#§ = param1;
         }
      }
      
      public function §0!L§(param1:§<>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#!E§.push(param1);
         }
      }
      
      public function §[@§(param1:String) : §<>§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() >= this.§#!E§.length)
                     {
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        loop1:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              _loc2_ = §§pop();
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     if(this.§#!E§[_loc2_].mName == param1)
                     {
                        §§goto(addr103);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr90);
         }
         if(_loc4_ || _loc3_)
         {
            return null;
         }
         addr103:
         return this.§#!E§[_loc2_];
      }
      
      public function §0B§(param1:int) : §<>§
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
               addr86:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr87:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(§§pop())
                        {
                           if(_loc2_)
                           {
                              return null;
                           }
                           if(_loc2_)
                           {
                              addr82:
                              break;
                           }
                           continue loop0;
                        }
                        return this.§#!E§[param1];
                        addr74:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
   }
}
