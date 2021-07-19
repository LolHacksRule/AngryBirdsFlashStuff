package §%!$§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8m§
   {
       
      
      public var mName:String;
      
      public var §;l§:int;
      
      public var §=!L§:Number = 1;
      
      private var §0s§:Vector.<§5v§>;
      
      private var §-C§:Number;
      
      public function §8m§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               addr101:
               while(true)
               {
                  this.§;l§ = param2;
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §04§() : Boolean
      {
         return this.§0s§.length < this.§;l§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §5v§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(param3);
            if(_loc7_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc8_ && param1))
                  {
                     addr30:
                     §§push(this.§-C§);
                     if(!(_loc8_ && param3))
                     {
                        addr39:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                  }
               }
               var _loc4_:SoundTransform = new SoundTransform(param3);
               var _loc5_:SoundChannel;
               if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
               {
                  if(!(_loc8_ && param3))
                  {
                     return null;
                  }
               }
               var _loc6_:§5v§ = new §5v§(_loc5_,this.§'!G§);
               if(!(_loc8_ && param3))
               {
                  if(this.§=!L§ == 0)
                  {
                     if(!_loc8_)
                     {
                        _loc6_.§#d§();
                     }
                     while(true)
                     {
                        §§goto(addr95);
                     }
                  }
                  addr95:
                  §§goto(addr107);
               }
               addr107:
               while(true)
               {
                  this.§0s§.push(_loc6_);
                  if(_loc7_ || param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc6_;
            }
            §§goto(addr39);
         }
         §§goto(addr30);
      }
      
      private function §'!G§(param1:§5v§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§5v§> = null;
         var _loc3_:§5v§ = null;
         if(_loc5_ || this)
         {
            if(this.§0s§.indexOf(param1) > -1)
            {
               addr46:
               _loc2_ = this.§0s§.splice(this.§0s§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(_loc5_ || _loc2_)
               {
                  _loc3_.§1W§();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §9y§() : Boolean
      {
         return this.§0s§.length > 0;
      }
      
      public function §,w§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§5v§ = null;
         while(this.§0s§.length > 0)
         {
            _loc1_ = this.§0s§[0];
            if(_loc3_ || _loc2_)
            {
               _loc1_.stop();
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.§?!!§();
         }
      }
      
      public function §0[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§5v§ = null;
         if(_loc4_ || _loc2_)
         {
            this.§=!L§ = 0;
         }
         for each(_loc1_ in this.§0s§)
         {
            if(_loc4_)
            {
               _loc1_.§#d§();
            }
         }
      }
      
      public function §0!>§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§5v§ = null;
         if(_loc5_)
         {
            this.§=!L§ = this.§-C§;
         }
         for each(_loc1_ in this.§0s§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.§ W§();
            }
         }
      }
   }
}
