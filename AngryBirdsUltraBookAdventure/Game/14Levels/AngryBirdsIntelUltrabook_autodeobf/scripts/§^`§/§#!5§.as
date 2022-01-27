package §^`§
{
   import §-5§.§+p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §#!5§ extends §,!K§
   {
       
      
      private var §2!N§:MovieClip;
      
      private var §?§:Boolean;
      
      public function §#!5§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§2!N§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §2s§(param1:MovieClip) : void
      {
         this.§2!N§ = param1;
      }
      
      public function get §2s§() : MovieClip
      {
         return this.§2!N§;
      }
      
      public function get §3!_§() : Boolean
      {
         return this.§?§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §#!@§ = param4 = param4 || §14§.§93§;
         §][§ = param1;
         §&"!§ = §+p§.§!!I§ == param1;
         §+C§(param1,param2,param3);
         if(§&"!§)
         {
            §"x§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§#Z§);
            addEventListener(Event.REMOVED_FROM_STAGE,§=!?§);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §[Y§ = true;
         §4!^§ = new §>!N§(param1,§#!@§,true);
         this.§2!N§.visible = false;
         this.§?§ = true;
         §4!^§.visible = true;
         if(§4!^§ && !param5)
         {
            addChild(§4!^§);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§?§ = false;
         this.§2!N§.visible = true;
         if(§4!^§)
         {
            §4!^§.visible = false;
         }
      }
   }
}
