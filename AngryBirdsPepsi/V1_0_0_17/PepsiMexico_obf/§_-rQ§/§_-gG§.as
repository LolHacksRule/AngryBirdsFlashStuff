package §_-rQ§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-gG§
   {
       
      
      public var mName:String;
      
      public var §_-Za§:int;
      
      public var §_-Dv§:Number = 1;
      
      private var §_-2f§:Vector.<§_-iG§>;
      
      public function §_-gG§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            if(!_loc5_)
            {
               this.mName = param1;
               if(!(_loc5_ && this))
               {
                  this.§_-Za§ = param2;
                  if(!_loc5_)
                  {
                     addr46:
                     this.§_-Dv§ = param3;
                     if(_loc5_ && param2)
                     {
                     }
                  }
                  §§goto(addr69);
               }
               this.§_-2f§ = new Vector.<§_-iG§>();
            }
            addr69:
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-kB§() : Boolean
      {
         return this.§_-2f§.length < this.§_-Za§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §_-iG§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            §§push(param3);
            if(_loc8_)
            {
               if(§§pop() < 0)
               {
               }
               §§goto(addr46);
            }
            param3 = §§pop();
         }
         addr46:
         if(!_loc7_)
         {
            §§push(this.§_-Dv§);
            if(!(_loc7_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:SoundTransform = new SoundTransform(param3);
         var _loc5_:SoundChannel;
         if((_loc5_ = param1.play(0,param2,_loc4_)) == null)
         {
            if(!_loc7_)
            {
               return null;
            }
         }
         var _loc6_:§_-iG§ = new §_-iG§(_loc5_,this.§_-Wu§);
         if(_loc8_ || param1)
         {
            this.§_-2f§.push(_loc6_);
         }
         return _loc6_;
      }
      
      private function §_-Wu§(param1:§_-iG§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§_-iG§> = null;
         var _loc3_:§_-iG§ = null;
         if(_loc5_ || param1)
         {
            if(this.§_-2f§.indexOf(param1) > -1)
            {
               addr40:
               _loc2_ = this.§_-2f§.splice(this.§_-2f§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(_loc5_)
               {
                  _loc3_.§_-g0§();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §_-Z§() : Boolean
      {
         return this.§_-2f§.length > 0;
      }
      
      public function §_-yO§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-iG§ = null;
         while(this.§_-2f§.length > 0)
         {
            _loc1_ = this.§_-2f§[0];
            if(_loc2_)
            {
               _loc1_.§_-D8§.stop();
               if(_loc2_)
               {
                  _loc1_.§_-py§();
               }
            }
         }
      }
   }
}
