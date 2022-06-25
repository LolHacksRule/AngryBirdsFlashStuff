package §3!j§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundChannelController
   {
       
      
      public var mName:String;
      
      public var §9!9§:int;
      
      public var §1E§:Number = 1;
      
      private var §!!1§:Vector.<§%[§>;
      
      private var §'!!§:Number;
      
      public function SoundChannelController(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§9!9§ = param2;
                  while(_loc4_ || param1)
                  {
                     this.§1E§ = param3;
                     loop3:
                     while(!_loc5_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§'!!§ = this.§1E§;
                           do
                           {
                              this.§!!1§ = new Vector.<§%[§>();
                           }
                           while(_loc5_);
                           
                           if(!(_loc5_ && param2))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §4=§() : Boolean
      {
         return this.§!!1§.length < this.§9!9§;
      }
      
      public function §`B§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §%[§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param3);
            if(_loc9_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc8_ && param1))
                  {
                     §§push(this.§'!!§);
                     if(!_loc8_)
                     {
                        addr35:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                  }
               }
               §§goto(addr37);
            }
            §§goto(addr35);
         }
         addr37:
         var _loc5_:SoundTransform = new SoundTransform(param3);
         var _loc6_:SoundChannel = param1.play(0,param2,_loc5_);
         if(!(_loc8_ && param1))
         {
            if(_loc6_ == null)
            {
               if(_loc9_ || param1)
               {
                  §§goto(addr76);
               }
            }
            var _loc7_:§%[§ = new §%[§(_loc6_,this.§[L§,param4);
            if(!_loc8_)
            {
               if(this.§1E§ == 0)
               {
                  while(true)
                  {
                     _loc7_.§@!"§();
                     addr127:
                     while(true)
                     {
                     }
                     addr112:
                     if(!(_loc9_ || param2))
                     {
                        continue;
                     }
                     return _loc7_;
                     addr119:
                  }
               }
               while(true)
               {
                  this.§!!1§.push(_loc7_);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr119);
         }
         addr76:
         return null;
      }
      
      private function §[L§(param1:§%[§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§%[§> = null;
         var _loc3_:§%[§ = null;
         if(!(_loc4_ && this))
         {
            if(this.§!!1§.indexOf(param1) > -1)
            {
               addr56:
               _loc2_ = this.§!!1§.splice(this.§!!1§.indexOf(param1),1);
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
      
      public function §9X§() : Boolean
      {
         return this.§!!1§.length > 0;
      }
      
      public function §=O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%[§ = null;
         while(this.§!!1§.length > 0)
         {
            _loc1_ = this.§!!1§[0];
            if(_loc2_ || _loc2_)
            {
               _loc1_.stop();
               if(_loc2_ || _loc1_)
               {
                  _loc1_.§;Y§();
               }
            }
         }
      }
      
      public function §0!Q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%[§ = null;
         if(_loc5_ || _loc1_)
         {
            this.§1E§ = 0;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§!!1§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.§@!"§();
            }
         }
      }
      
      public function §[!%§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%[§ = null;
         if(_loc5_)
         {
            this.§1E§ = this.§'!!§;
         }
         var _loc3_:* = this.§!!1§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               _loc1_.§6!f§();
            }
         }
      }
   }
}
