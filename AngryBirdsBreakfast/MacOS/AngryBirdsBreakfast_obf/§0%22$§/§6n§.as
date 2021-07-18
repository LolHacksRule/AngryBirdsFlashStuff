package §0"$§
{
   import §,L§.§%J§;
   import §-!;§.§>!B§;
   import flash.display.MovieClip;
   
   public class §6n§ extends §%J§
   {
      
      private static const §6p§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §6n§))
         {
            §6p§ = 1000 / 60;
         }
      }
      
      private var §?h§:String;
      
      private var §5!`§:String;
      
      private var §,!B§:int = 0;
      
      private var §5!#§:int = 0;
      
      private var §`!M§:Number = 0;
      
      private var §`Z§:Boolean = false;
      
      public function §6n§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §4!h§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || _loc2_)
         {
            §§push(this);
            §§push(this.§`!M§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§`!M§ = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(this);
               §§push(this.§`!M§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() / §6p§);
               }
               §§pop().§5!#§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§,!B§ >= this.§5!#§)
            {
               if(_loc6_ || _loc2_)
               {
                  addr152:
                  this.§,!B§ = this.§5!#§;
               }
               loop7:
               while(_loc6_ || _loc3_)
               {
                  this.§5!`§ = this.§?h§;
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  if(_loc6_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           break loop0;
                        }
                        while(true)
                        {
                           §§push(§§pop());
                        }
                        addr194:
                     }
                     loop4:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr196:
                        addr219:
                        while(!_loc5_)
                        {
                           this.§5!#§ = this.§,!B§;
                        }
                        while(true)
                        {
                           this.§?h§ = mClip.currentLabel;
                           break loop4;
                        }
                     }
                     while(true)
                     {
                        §§push(this.§?h§);
                        if(!_loc5_)
                        {
                           if(§§pop() == this.§5!`§)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr194);
                           }
                        }
                        §§goto(addr195);
                     }
                     addr195:
                     continue loop0;
                     addr214:
                  }
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           this.§`!M§ = this.§5!#§ * §6p§;
                           break loop7;
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr196);
                  }
               }
               while(true)
               {
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
                  §§goto(addr192);
               }
               addr171:
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§,!B§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc5_ && param1))
               {
                  _loc3_.§,!B§ = _loc4_;
               }
               if(!(_loc5_ && param1))
               {
                  mClip.gotoAndStop(this.§,!B§);
                  §§goto(addr219);
               }
               else
               {
                  §§goto(addr152);
               }
            }
            §§goto(addr152);
         }
         return §§pop();
      }
      
      public function §6!Y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §;!=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §5!t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §%!"§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
            loop0:
            while(true)
            {
               this.§?h§ = param1;
               addr83:
               while(true)
               {
                  this.§5!`§ = param1;
                  addr66:
                  while(_loc3_)
                  {
                     this.§5!#§ = mClip.currentFrame;
                  }
                  continue loop0;
               }
            }
         }
         loop3:
         while(true)
         {
            this.§,!B§ = mClip.currentFrame;
            while(true)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr83);
                  }
                  break;
               }
               continue loop3;
            }
            §§goto(addr66);
         }
      }
      
      public function §4!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8Z§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §,!V§() : Boolean
      {
         return this.§`Z§;
      }
      
      public function set §,!V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§`Z§ = param1;
         }
      }
   }
}
