package §@D§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §;A§
   {
       
      
      public var mName:String;
      
      public var §[$§:int;
      
      public var each:Number = 1;
      
      private var §>'§:Vector.<§`!%§>;
      
      private var §,i§:Number;
      
      public function §;A§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
            this.mName = param1;
            this.§[$§ = param2;
            this.each = param3;
            this.§,i§ = this.each;
            this.§>'§ = new Vector.<§`!%§>();
         }
      }
      
      public function §>Q§() : Boolean
      {
         return this.§>'§.length < this.§[$§;
      }
      
      public function § ;§(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §`!%§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            §§push(param3);
            if(!(_loc8_ && this))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc8_ && param2))
                  {
                     addr41:
                     §§push(this.§,i§);
                     if(_loc9_)
                     {
                        addr46:
                        param3 = §§pop();
                     }
                     §§goto(addr46);
                  }
               }
               var _loc5_:SoundTransform = new SoundTransform(param3);
               var _loc6_:SoundChannel;
               if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
               {
                  if(!(_loc8_ && param3))
                  {
                     return null;
                  }
               }
               var _loc7_:§`!%§ = new §`!%§(_loc6_,this.§!>§,param4);
               if(!(_loc8_ && param3))
               {
                  if(this.each == 0)
                  {
                     if(_loc9_)
                     {
                        _loc7_.§2I§();
                        if(_loc9_ || param1)
                        {
                           addr121:
                           this.§>'§.push(_loc7_);
                        }
                     }
                     return _loc7_;
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr46);
         }
         §§goto(addr41);
      }
      
      private function §!>§(param1:§`!%§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Vector.<§`!%§> = null;
         var _loc3_:§`!%§ = null;
         if(!_loc4_)
         {
            if(this.§>'§.indexOf(param1) > -1)
            {
               _loc2_ = this.§>'§.splice(this.§>'§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               addr41:
               if(!(_loc4_ && this))
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
      
      public function §^[§() : Boolean
      {
         return this.§>'§.length > 0;
      }
      
      public function §%,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`!%§ = null;
         while(this.§>'§.length > 0)
         {
            _loc1_ = this.§>'§[0];
            if(_loc2_ || this)
            {
               _loc1_.stop();
               if(_loc2_ || _loc3_)
               {
                  _loc1_.§0+§();
               }
            }
         }
      }
      
      public function §99§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`!%§ = null;
         if(!(_loc4_ && _loc3_))
         {
            this.each = 0;
         }
         for each(_loc1_ in this.§>'§)
         {
            if(_loc5_)
            {
               _loc1_.§2I§();
            }
         }
      }
      
      public function §^$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`!%§ = null;
         if(!_loc5_)
         {
            this.each = this.§,i§;
         }
         for each(_loc1_ in this.§>'§)
         {
            if(_loc4_)
            {
               _loc1_.§5!,§();
            }
         }
      }
   }
}
