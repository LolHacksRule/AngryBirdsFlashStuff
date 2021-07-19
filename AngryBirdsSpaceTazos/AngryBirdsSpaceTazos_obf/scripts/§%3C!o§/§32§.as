package §<!o§
{
   import §"!&§.§="D§;
   import §+!a§.§2!a§;
   import §+!a§.§6p§;
   import §+!a§.§>8§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §32§ extends §3!$§
   {
       
      
      protected var §!4§:String;
      
      protected var §36§:String;
      
      protected var §7"0§:String;
      
      protected var §'[§:String;
      
      protected var §>!%§:Number = 1.0;
      
      protected var §3%§:§="D§;
      
      public function §32§(param1:§6p§, param2:Number, param3:§,C§, param4:§="D§, param5:Number, param6:Boolean = true)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            super(param1,param2,param3,param5,param6);
            loop0:
            while(true)
            {
               this.§3%§ = param4;
               addr109:
               loop1:
               while(true)
               {
                  this.§!4§ = param1.§?"5§;
                  while(true)
                  {
                     this.§36§ = param1.§4L§;
                     addr37:
                     if(!(_loc8_ && param3))
                     {
                        if(_loc7_)
                        {
                           return;
                           addr46:
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(_loc7_ || param3)
                  {
                     this.§'[§ = param1.§%!R§;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr109);
            }
         }
         §§goto(addr88);
      }
      
      public function get §?"5§() : String
      {
         return this.§!4§;
      }
      
      public function get §4L§() : String
      {
         return this.§36§;
      }
      
      public function get §,n§() : String
      {
         return this.§7"0§;
      }
      
      public function get §%!R§() : String
      {
         return this.§'[§;
      }
      
      public function get textureScale() : Number
      {
         return this.§>!%§;
      }
      
      override public function playAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3%§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr61);
            }
            §§pop().playSound(§break§,10000);
         }
         addr61:
         if(_loc2_ || this)
         {
            §§push(this.§3%§);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3%§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().§,!z§(§break§);
         }
         addr55:
         if(!_loc1_)
         {
            §§push(this.§3%§);
         }
      }
      
      override protected function createLayer(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number) : §!!q§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§>8§ = null;
         if(!(_loc7_ && param1))
         {
            if(param1 is §>8§)
            {
               addr40:
               _loc5_ = param1 as §>8§;
               if(!_loc7_)
               {
                  return new §[4§(_loc5_,param2,param3,param4);
               }
            }
            return super.createLayer(param1,param2,param3,param4);
         }
         §§goto(addr40);
      }
   }
}
