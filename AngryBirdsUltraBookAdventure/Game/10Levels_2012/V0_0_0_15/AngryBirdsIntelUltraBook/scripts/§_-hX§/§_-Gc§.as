package §_-hX§
{
   import §_-05L§.§_-K5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §_-Gc§ extends §_-pI§
   {
       
      
      private var §do §:MovieClip;
      
      private var §_-WM§:Boolean;
      
      public function §_-Gc§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§do § = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §_-CY§(param1:MovieClip) : void
      {
         this.§do § = param1;
      }
      
      public function get §_-CY§() : MovieClip
      {
         return this.§do §;
      }
      
      public function get §_-Vo§() : Boolean
      {
         return this.§_-WM§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §_-3m§ = param4 = param4 || §_-bT§.§_-N2§;
         §_-ck§ = param1;
         §_-52§ = §_-K5§.§_-EE§ == param1;
         §_-BS§(param1,param2,param3);
         if(§_-52§)
         {
            §_-uP§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,§_-b-§);
            addEventListener(Event.REMOVED_FROM_STAGE,§_-l5§);
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §_-m4§ = true;
         §_-2A§ = new §_-WC§(param1,§_-3m§,true);
         this.§do §.visible = false;
         this.§_-WM§ = true;
         §_-2A§.visible = true;
         if(§_-2A§ && !param5)
         {
            addChild(§_-2A§);
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.§_-WM§ = false;
         this.§do §.visible = true;
         if(§_-2A§)
         {
            §_-2A§.visible = false;
         }
      }
   }
}
