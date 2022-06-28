package §%t§
{
   import §#!"§.§"U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3!d§ extends §9!7§
   {
       
      
      private var §^!y§:MovieClip;
      
      private var §,J§:Boolean;
      
      public function §3!d§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§^!y§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §+!^§(param1:MovieClip) : void
      {
         this.§^!y§ = param1;
      }
      
      public function get §+!^§() : MovieClip
      {
         return this.§^!y§;
      }
      
      public function get §5?§() : Boolean
      {
         return this.§,J§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §&Q§ = param4 = param4 || §?!a§.§+6§;
         §^o§ = param1;
         §@!h§ = §"U§.§7!2§ == param1;
         §0Y§(param1,param2,param3);
         if(§@!h§)
         {
            §'$§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§+T§);
            addEventListener(Event.REMOVED_FROM_STAGE,§<I§);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §+!M§ = true;
         §2-§ = new §1§(param1,§&Q§,true);
         this.§^!y§.visible = false;
         this.§,J§ = true;
         §2-§.visible = true;
         if(§2-§ && !param5)
         {
            addChild(§2-§);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§,J§ = false;
         this.§^!y§.visible = true;
         if(§2-§)
         {
            §2-§.visible = false;
         }
      }
   }
}
