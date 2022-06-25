package §3!c§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var §20§:Vector.<§33§>;
      
      protected var §@!j§:BitmapData;
      
      protected var mName:String;
      
      private var §[+§:Number = 1.0;
      
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
            this.§@!j§ = param1;
            while(_loc2_ || _loc2_)
            {
               this.§20§ = new Vector.<§33§>();
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function get §@![§() : int
      {
         return this.§20§.length;
      }
      
      public function get §&!i§() : int
      {
         return this.§@!j§.width;
      }
      
      public function get §0o§() : int
      {
         return this.§@!j§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@!j§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[+§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§@!j§)
            {
               while(true)
               {
                  this.§@!j§.dispose();
                  addr82:
                  loop3:
                  while(true)
                  {
                     this.§@!j§ = null;
                     addr66:
                     addr73:
                     while(_loc2_ && _loc2_)
                     {
                        continue loop3;
                     }
                  }
                  addr54:
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
            while(true)
            {
               this.§20§ = new Vector.<§33§>();
               if(_loc1_)
               {
                  §§goto(addr54);
               }
               §§goto(addr66);
               §§goto(addr73);
            }
            §§goto(addr61);
         }
         §§goto(addr82);
      }
      
      public function §3x§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@!j§ = param1;
         }
      }
      
      public function §7W§(param1:§33§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§20§.push(param1);
         }
      }
      
      public function §1!,§(param1:String) : §33§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         do
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() >= this.§20§.length)
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     return null;
                  }
               }
               else if(this.§20§[_loc2_].mName == param1)
               {
                  break;
               }
               §§push(_loc2_);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                  }
                  addr74:
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr74);
         }
         while(!_loc4_);
         
         return this.§20§[_loc2_];
      }
      
      public function §'!1§(param1:int) : §33§
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
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           addr52:
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           while(§§pop())
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              addr87:
                              if(_loc2_)
                              {
                                 return null;
                              }
                              continue loop0;
                           }
                           return this.§20§[param1];
                           addr74:
                        }
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
   }
}
