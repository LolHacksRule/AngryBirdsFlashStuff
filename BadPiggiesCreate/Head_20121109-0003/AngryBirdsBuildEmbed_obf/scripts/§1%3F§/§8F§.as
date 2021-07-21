package §1?§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §8F§
   {
       
      
      public var mName:String;
      
      public var §0!p§:int;
      
      public var §3A§:Number = 1;
      
      private var §;"§:Vector.<§#!C§>;
      
      private var §&!5§:Number;
      
      public function §8F§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_)
         {
            this.mName = param1;
            if(!(_loc4_ && this))
            {
               this.§0!p§ = param2;
               if(!_loc4_)
               {
                  this.§3A§ = param3;
                  this.§&!5§ = this.§3A§;
                  if(!(_loc4_ && param1))
                  {
                     addr70:
                     this.§;"§ = new Vector.<§#!C§>();
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function §6!C§() : Boolean
      {
         return this.§;"§.length < this.§0!p§;
      }
      
      public function §4c§(param1:Sound, param2:int = 0, param3:Number = -1) : §#!C§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            §§push(param3);
            if(_loc7_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc8_)
                  {
                     addr30:
                     §§push(this.§&!5§);
                     if(!_loc8_)
                     {
                        addr35:
                        param3 = §§pop();
                     }
                     §§goto(addr35);
                  }
               }
               var _loc4_:SoundTransform = new SoundTransform(param3);
               var _loc5_:SoundChannel;
               if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
               {
                  if(_loc7_)
                  {
                     return null;
                  }
               }
               var _loc6_:§#!C§ = new §#!C§(_loc5_,this.§!!%§);
               if(!_loc8_)
               {
                  if(this.§3A§ == 0)
                  {
                     if(!(_loc8_ && param1))
                     {
                        §§goto(addr95);
                     }
                  }
                  §§goto(addr104);
               }
               addr95:
               _loc6_.§<!>§();
               if(_loc7_ || this)
               {
                  addr104:
                  this.§;"§.push(_loc6_);
               }
               return _loc6_;
            }
            §§goto(addr35);
         }
         §§goto(addr30);
      }
      
      private function §!!%§(param1:§#!C§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§#!C§> = null;
         var _loc3_:§#!C§ = null;
         if(_loc5_ || this)
         {
            if(this.§;"§.indexOf(param1) > -1)
            {
               addr56:
               _loc2_ = this.§;"§.splice(this.§;"§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(_loc5_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §6e§() : Boolean
      {
         return this.§;"§.length > 0;
      }
      
      public function §'!Q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#!C§ = null;
         while(this.§;"§.length > 0)
         {
            _loc1_ = this.§;"§[0];
            if(_loc2_ || _loc2_)
            {
               _loc1_.stop();
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.§[s§();
               }
            }
         }
      }
      
      public function §!!H§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§#!C§ = null;
         if(!_loc4_)
         {
            this.§3A§ = 0;
         }
         for each(_loc1_ in this.§;"§)
         {
            if(!_loc4_)
            {
               _loc1_.§<!>§();
            }
         }
      }
      
      public function §=!a§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§#!C§ = null;
         if(!(_loc5_ && this))
         {
            this.§3A§ = this.§&!5§;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;"§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.§6h§();
            }
         }
      }
   }
}
