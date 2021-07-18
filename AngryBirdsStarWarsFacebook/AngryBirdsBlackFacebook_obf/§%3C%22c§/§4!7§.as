package §<"c§
{
   import §+!c§.§9"1§;
   import §,"T§.§55§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   
   public class §4!7§ extends §]"_§
   {
      
      public static const §^!7§:String = "IntroState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §4!7§))
         {
            §^!7§ = "IntroState";
         }
      }
      
      private var §"!§:§9"1§;
      
      public function §4!7§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String = "IntroState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@;§ = new §]#[§(this);
            while(true)
            {
               §@;§.init(§&$§.§@8§.Views.View_IntroPage[0]);
               while(_loc2_)
               {
                  this.§"!§ = new §9"1§("StarBackground");
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     while(true)
                     {
                        §@;§.movieClip.addChildAt(this.§"!§,0);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
         }
         while(true)
         {
            §7#^§ = true;
            while(!(_loc3_ && _loc3_))
            {
               §1!I§ = false;
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §7!=§ = new §55§(param1,§%G§.stage,1000 / 60);
         }
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == §6y§.§>]§)
            {
            }
         }
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1 == §6y§.§>]§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §@!m§(§4#;§.singleton).§!g§();
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setViewSize(param1,param2);
            do
            {
               this.§"!§.setSize(param1,param2);
            }
            while(!_loc4_);
            
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.update(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.onUIInteraction(param1,param2,param3);
         }
      }
   }
}
