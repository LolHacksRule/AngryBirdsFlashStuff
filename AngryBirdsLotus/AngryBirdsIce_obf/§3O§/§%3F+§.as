package §3O§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §?+§
   {
       
      
      public var mName:String;
      
      public var §&3§:int;
      
      public var §^^§:Number = 1;
      
      private var §,!=§:Vector.<§%!D§>;
      
      private var §2!"§:Number;
      
      public function §?+§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            this.mName = param1;
            this.§&3§ = param2;
            while(true)
            {
               this.§^^§ = param3;
            }
            addr78:
         }
         loop1:
         do
         {
            this.§2!"§ = this.§^^§;
            while(!_loc4_)
            {
               this.§,!=§ = new Vector.<§%!D§>();
               if(!_loc4_)
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc4_ && this);
         
      }
      
      public function §2V§() : Boolean
      {
         return this.§,!=§.length < this.§&3§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1) : §%!D§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            §§push(param3);
            if(!_loc7_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc7_)
                  {
                     addr31:
                     §§push(this.§2!"§);
                     if(_loc8_)
                     {
                        addr36:
                        param3 = §§pop();
                     }
                     §§goto(addr36);
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
               var _loc6_:§%!D§ = new §%!D§(_loc5_,this.§2H§);
               if(_loc8_)
               {
                  if(this.§^^§ == 0)
                  {
                     if(_loc8_)
                     {
                        _loc6_.§[=§();
                        addr107:
                        while(true)
                        {
                        }
                        addr107:
                     }
                     §§goto(addr107);
                  }
                  while(true)
                  {
                     this.§,!=§.push(_loc6_);
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr107);
                  }
                  return _loc6_;
               }
               §§goto(addr107);
            }
            §§goto(addr36);
         }
         §§goto(addr31);
      }
      
      private function §2H§(param1:§%!D§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§%!D§> = null;
         var _loc3_:§%!D§ = null;
         if(!_loc4_)
         {
            if(this.§,!=§.indexOf(param1) > -1)
            {
               _loc2_ = this.§,!=§.splice(this.§,!=§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               addr41:
               if(!(_loc4_ && _loc2_))
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §%!'§() : Boolean
      {
         return this.§,!=§.length > 0;
      }
      
      public function §&t§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%!D§ = null;
         while(this.§,!=§.length > 0)
         {
            _loc1_ = this.§,!=§[0];
            if(_loc2_ || _loc2_)
            {
               _loc1_.stop();
               if(!(_loc3_ && this))
               {
                  _loc1_.§=!0§();
               }
            }
         }
      }
      
      public function §%K§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%!D§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§^^§ = 0;
         }
         for each(_loc1_ in this.§,!=§)
         {
            if(!_loc4_)
            {
               _loc1_.§[=§();
            }
         }
      }
      
      public function §<m§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§%!D§ = null;
         if(!_loc5_)
         {
            this.§^^§ = this.§2!"§;
         }
         for each(_loc1_ in this.§,!=§)
         {
            if(_loc4_ || this)
            {
               _loc1_.§=D§();
            }
         }
      }
   }
}
