package §1!T§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §,k§
   {
       
      
      public var mName:String;
      
      public var §=!v§:int;
      
      public var §&K§:Number = 1;
      
      private var §#1§:Vector.<§&!v§>;
      
      private var §^j§:Number;
      
      public function §,k§(param1:String, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr57:
               if(!(_loc4_ || param2))
               {
                  continue;
               }
               this.§#1§ = new Vector.<§&!v§>();
               addr74:
               if(!_loc5_)
               {
                  if(!_loc4_)
                  {
                     loop3:
                     while(_loc4_ || this)
                     {
                        this.§^j§ = this.§&K§;
                        while(!(_loc5_ && param3))
                        {
                           §§goto(addr57);
                           §§goto(addr74);
                        }
                        while(true)
                        {
                           this.§&K§ = param3;
                           continue loop3;
                           §§goto(addr50);
                        }
                        addr50:
                     }
                     while(true)
                     {
                        this.§=!v§ = param2;
                        §§goto(addr91);
                        §§goto(addr79);
                     }
                     addr79:
                     addr96:
                  }
                  return;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr96);
      }
      
      public function §]!W§() : Boolean
      {
         return this.§#1§.length < this.§=!v§;
      }
      
      public function playSound(param1:Sound, param2:int = 0, param3:Number = -1, param4:Function = null) : §&!v§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param3);
            if(_loc9_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc8_ && this))
                  {
                     §§push(this.§^j§);
                     if(_loc9_ || this)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                     }
                     param3 = §§pop();
                     addr42:
                     var _loc5_:SoundTransform = new SoundTransform(param3);
                     var _loc6_:SoundChannel;
                     if((_loc6_ = param1.play(0,param2,_loc5_)) == null)
                     {
                        if(!(_loc8_ && this))
                        {
                           return null;
                        }
                     }
                     var _loc7_:§&!v§ = new §&!v§(_loc6_,this.§,0§,param4);
                     if(!_loc8_)
                     {
                        if(this.§&K§ == 0)
                        {
                           while(true)
                           {
                              _loc7_.§0$§();
                              while(true)
                              {
                              }
                           }
                           addr126:
                        }
                        do
                        {
                           this.§#1§.push(_loc7_);
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                        }
                        while(!(_loc9_ || param3));
                        
                        return _loc7_;
                     }
                     §§goto(addr126);
                  }
               }
               §§goto(addr42);
            }
            §§goto(addr40);
         }
         §§goto(addr42);
      }
      
      private function §,0§(param1:§&!v§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§&!v§> = null;
         var _loc3_:§&!v§ = null;
         if(_loc4_)
         {
            if(this.§#1§.indexOf(param1) > -1)
            {
               addr50:
               _loc2_ = this.§#1§.splice(this.§#1§.indexOf(param1),1);
               _loc3_ = _loc2_[0];
               if(_loc4_)
               {
                  _loc3_.destroy();
               }
               _loc3_ = null;
               _loc2_ = null;
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §<!P§() : Boolean
      {
         return this.§#1§.length > 0;
      }
      
      public function §[!W§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!v§ = null;
         while(this.§#1§.length > 0)
         {
            _loc1_ = this.§#1§[0];
            if(_loc2_ || _loc2_)
            {
               _loc1_.stop();
               if(_loc3_ && this)
               {
                  continue;
               }
            }
            _loc1_.§0!P§();
         }
      }
      
      public function §`!@§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&!v§ = null;
         if(_loc4_ || _loc3_)
         {
            this.§&K§ = 0;
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§#1§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.§0$§();
            }
         }
      }
      
      public function §]!Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&!v§ = null;
         if(_loc4_)
         {
            this.§&K§ = this.§^j§;
         }
         for each(_loc1_ in this.§#1§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.§%!v§();
            }
         }
      }
   }
}
