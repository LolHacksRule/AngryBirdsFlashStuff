package §;!,§
{
   import §3§.§ null§;
   import §4!7§.§%!m§;
   import §4!r§.§7R§;
   
   public class §=!I§ extends AbstractTween implements §0!]§
   {
       
      
      protected var §[!8§:§7R§;
      
      protected var §6U§:§ null§;
      
      public function §=!I§(param1:§%!m§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super(param1,0);
         }
      }
      
      public function set time(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §1J§ = param1;
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc4_)
                  {
                     §§push(param1);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(§§pop() < §1J§)
                        {
                           if(!_loc4_)
                           {
                              §§push(this.§[!8§.§-1§(param1,0,1,§1J§));
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr76);
                              }
                           }
                           §§goto(addr102);
                        }
                        else
                        {
                           §§push(Number(1));
                        }
                        §§goto(addr105);
                     }
                     addr76:
                     §§push(Number(§§pop()));
                     if(!(_loc4_ && _loc3_))
                     {
                        addr94:
                        _loc2_ = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           addr113:
                           this.§6U§.update(_loc2_);
                           addr102:
                        }
                     }
                     else
                     {
                        addr105:
                        _loc2_ = §§pop();
                        if(_loc3_ || this)
                        {
                           §§goto(addr113);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr94);
         }
         §§goto(addr113);
      }
      
      public function get §`I§() : § null§
      {
         return this.§6U§;
      }
      
      public function get §-;§() : §7R§
      {
         return this.§[!8§;
      }
      
      override protected function copyFrom(param1:AbstractTween) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§=!I§ = param1 as §=!I§;
         if(!(_loc3_ && _loc3_))
         {
            this.§[!8§ = _loc2_.§[!8§;
            if(_loc4_)
            {
               addr50:
               this.§6U§ = _loc2_.§6U§.clone();
            }
            return;
         }
         §§goto(addr50);
      }
      
      override protected function newInstance() : AbstractTween
      {
         return new §=!I§(§5!§);
      }
      
      public function set §-;§(param1:§7R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[!8§ = param1;
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§6U§);
            if(_loc2_)
            {
               return §§pop() != null ? this.§6U§.target : null;
            }
         }
         §§goto(addr42);
      }
      
      public function set §`I§(param1:§ null§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6U§ = param1;
         }
      }
      
      public function get time() : Number
      {
         return §1J§;
      }
   }
}
