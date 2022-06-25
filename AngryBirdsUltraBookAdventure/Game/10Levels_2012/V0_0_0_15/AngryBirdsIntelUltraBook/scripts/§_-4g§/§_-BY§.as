package §_-4g§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §_-BY§
   {
       
      
      public var mName:String;
      
      public var §_-6O§:int;
      
      public var §_-PN§:Number = 1;
      
      private var §_-Jm§:Vector.<§_-9c§>;
      
      private var §_-011§:Number;
      
      public function §_-BY§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(_loc5_ || this)
               {
                  this.§_-6O§ = param2;
                  loop2:
                  do
                  {
                     this.§_-PN§ = param3;
                     while(true)
                     {
                        this.§_-011§ = this.§_-PN§;
                        while(!(_loc4_ && param3))
                        {
                           if(!_loc4_)
                           {
                              this.§_-Jm§ = new Vector.<§_-9c§>();
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(_loc4_);
                  
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §_-0Dk§() : Boolean
      {
         return this.§_-Jm§.length < this.§_-6O§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §_-9c§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param3);
            if(!(_loc9_ && param3))
            {
               if(§§pop() < 0)
               {
                  if(!_loc9_)
                  {
                     addr30:
                     §§push(this.§_-011§);
                     if(!(_loc9_ && param3))
                     {
                        addr40:
                        param3 = §§pop();
                     }
                     §§goto(addr40);
                  }
               }
               var _loc5_:SoundTransform = new SoundTransform(param3);
               var _loc6_:SoundChannel;
               if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
               {
                  if(!(_loc9_ && param2))
                  {
                     return null;
                  }
               }
               var _loc7_:§_-9c§ = new §_-9c§(_loc6_,this.§_-02E§,param4);
               if(!_loc9_)
               {
                  if(this.§_-PN§ == 0)
                  {
                     if(!(_loc9_ && param3))
                     {
                        _loc7_.§_-d7§();
                     }
                     while(true)
                     {
                        §§goto(addr101);
                     }
                  }
                  addr101:
                  §§goto(addr113);
               }
               addr113:
               while(true)
               {
                  this.§_-Jm§.push(_loc7_);
                  if(!(_loc9_ && this))
                  {
                     break;
                  }
                  continue loop0;
               }
               return _loc7_;
            }
            §§goto(addr40);
         }
         §§goto(addr30);
      }
      
      private function §_-02E§(param1:§_-9c§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§_-9c§> = null;
         var _loc3_:§_-9c§ = null;
         if(_loc5_ || this)
         {
            if(this.§_-Jm§.indexOf(param1) > -1)
            {
               _loc2_ = this.§_-Jm§.splice(this.§_-Jm§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               addr46:
               if(_loc5_ || param1)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-3t§() : Boolean
      {
         return this.§_-Jm§.length > 0;
      }
      
      public function §_-j4§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-9c§ = null;
         while(this.§_-Jm§.length > 0)
         {
            _loc1_ = this.§_-Jm§[0];
            if(_loc2_)
            {
               _loc1_.stop();
               if(_loc3_)
               {
                  continue;
               }
            }
            _loc1_.§_-T5§();
         }
      }
      
      public function §_-0-c§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-9c§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§_-PN§ = 0;
         }
         var _loc3_:* = this.§_-Jm§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§_-d7§();
            }
         }
      }
      
      public function §_-8T§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-9c§ = null;
         if(_loc4_)
         {
            this.§_-PN§ = this.§_-011§;
         }
         for each(_loc1_ in this.§_-Jm§)
         {
            if(_loc4_)
            {
               _loc1_.§_-XX§();
            }
         }
      }
   }
}
