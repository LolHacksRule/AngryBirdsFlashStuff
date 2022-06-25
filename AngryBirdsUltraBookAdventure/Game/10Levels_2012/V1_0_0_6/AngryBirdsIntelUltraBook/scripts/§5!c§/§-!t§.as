package §5!c§
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §-!t§
   {
       
      
      public var mName:String;
      
      public var §-!R§:int;
      
      public var §7m§:Number = 1;
      
      private var §^a§:Vector.<§try§>;
      
      private var §'!@§:Number;
      
      public function §-!t§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop3:
               while(!(_loc5_ && param3))
               {
                  this.§'!@§ = this.§7m§;
                  loop4:
                  while(_loc4_ || param2)
                  {
                     this.§^a§ = new Vector.<§try§>();
                     if(_loc4_ || param1)
                     {
                        if(!_loc5_)
                        {
                           addr49:
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 this.§-!R§ = param2;
                                 break loop4;
                                 §§goto(addr49);
                              }
                              addr96:
                           }
                           return;
                        }
                        continue loop3;
                     }
                  }
                  while(true)
                  {
                     this.§7m§ = param3;
                     continue loop3;
                     §§goto(addr57);
                  }
                  addr57:
               }
            }
         }
         §§goto(addr96);
      }
      
      public function § !"§() : Boolean
      {
         return this.§^a§.length < this.§-!R§;
      }
      
      public function playSound(param1:Sound, param2:String, param3:int = 0, param4:Number = -1, param5:Number = 0) : §try§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            §§push(param4);
            if(_loc10_)
            {
               if(§§pop() < 0)
               {
                  if(_loc10_)
                  {
                     §§push(this.§'!@§);
                     if(!_loc9_)
                     {
                        addr35:
                        §§push(Number(§§pop()));
                     }
                     param4 = §§pop();
                     addr37:
                     var _loc6_:SoundTransform = new SoundTransform(param4);
                     var _loc7_:SoundChannel;
                     if((_loc7_ = param1.play(param5,param3,_loc6_)) == null)
                     {
                        if(!_loc9_)
                        {
                           return null;
                        }
                     }
                     var _loc8_:§try§;
                     (_loc8_ = new §try§(_loc7_,param2)).addEventListener(Event.SOUND_COMPLETE,this.§6!e§);
                     if(!_loc9_)
                     {
                        if(this.§7m§ == 0)
                        {
                           while(true)
                           {
                              _loc8_.§`d§();
                              addr117:
                              while(true)
                              {
                              }
                              addr103:
                              if(!(_loc10_ || this))
                              {
                                 continue;
                              }
                              return _loc8_;
                              addr110:
                           }
                        }
                        while(true)
                        {
                           this.§^a§.push(_loc8_);
                           if(_loc9_)
                           {
                              continue;
                           }
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr35);
         }
         §§goto(addr37);
      }
      
      private function §6!e§(param1:Event) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Vector.<§try§> = null;
         var _loc4_:§try§ = null;
         var _loc2_:§try§ = §try§(param1.currentTarget);
         if(_loc5_)
         {
            _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.§6!e§);
            if(!(_loc6_ && _loc3_))
            {
               §§goto(addr53);
            }
            §§goto(addr69);
         }
         addr53:
         if(this.§^a§.indexOf(_loc2_) > -1)
         {
            addr69:
            _loc3_ = this.§^a§.splice(this.§^a§.indexOf(_loc2_),1);
            (_loc4_ = _loc3_[0]).destroy();
            _loc4_ = null;
            _loc3_ = null;
         }
      }
      
      public function §;,§() : Boolean
      {
         return this.§^a§.length > 0;
      }
      
      public function §0D§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§try§ = null;
         while(this.§^a§.length > 0)
         {
            _loc1_ = this.§^a§[0];
            if(!_loc3_)
            {
               _loc1_.stop();
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_.§#!e§();
         }
      }
      
      public function §]T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§try§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§7m§ = 0;
         }
         for each(_loc1_ in this.§^a§)
         {
            if(!_loc5_)
            {
               _loc1_.§`d§();
            }
         }
      }
      
      public function §"!G§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§try§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§7m§ = this.§'!@§;
         }
         var _loc3_:* = this.§^a§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§5!'§();
            }
         }
      }
      
      public function §!!e§(param1:String) : §try§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§^a§.length)
            {
               if(!_loc3_)
               {
                  return null;
               }
               loop1:
               while(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§try§(this.§^a§[_loc2_]).id == param1)
            {
               break;
            }
            §§goto(addr42);
         }
         while(_loc4_ || this);
         
         return §try§(this.§^a§[_loc2_]);
      }
   }
}
