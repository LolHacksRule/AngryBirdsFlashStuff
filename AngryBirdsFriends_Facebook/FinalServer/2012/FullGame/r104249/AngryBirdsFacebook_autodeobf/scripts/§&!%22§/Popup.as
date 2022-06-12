package §&!"§
{
   import §#M§.§^0§;
   import §-B§.§#!'§;
   import §5!G§.§&2§;
   import §;n§.§&G§;
   import §@!4§.ColorFadeLayerEvent;
   import §@!4§.§^C§;
   
   public class Popup extends §#!'§
   {
      
      public static const §`5§:int = 0;
      
      public static const §4!L§:int = 1;
      
      public static const §#c§:int = 2;
       
      
      protected const §1"9§:Number = 0.25;
      
      protected var §!F§:§^C§;
      
      protected var §&"D§:§^0§;
      
      protected var §]"E§:Boolean = false;
      
      protected var §!4§:Number = 0.7;
      
      private var §7"A§:int = 0;
      
      private var §'"#§:Boolean = false;
      
      public function Popup(param1:XML, param2:§^0§)
      {
         super(param1,param2.§@H§);
         this.§!F§ = new §^C§(0,0,0,0);
         param2.§@H§.§'!@§(this);
         this.§&"D§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§'"#§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §&2§.pause();
         this.§'"#§ = true;
         mClip.addChildAt(this.§!F§,0);
         if(param1)
         {
            this.§!F§.§%"K§(this.§!4§,this.§1"9§);
         }
         else
         {
            this.§!F§.§[_§(this.§!4§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§!F§ == null)
         {
            this.close();
            return;
         }
         this.§!F§.§%"K§(0,this.§1"9§);
         this.§!F§.addEventListener(ColorFadeLayerEvent.§'!?§,this.§!!5§);
      }
      
      protected function §!!5§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§'"#§ = false;
         if(this.§]"E§)
         {
            return;
         }
         if(this.§!F§)
         {
            this.§!F§.removeEventListener(ColorFadeLayerEvent.§'!?§,this.§!!5§);
            mClip.removeChild(this.§!F§);
            this.§!F§.clean();
            this.§!F§ = null;
         }
         var _loc1_:§&G§ = this.§&"D§.getItemByName("Container_Popup");
         if(this.§&"D§.§@H§)
         {
            this.§&"D§.§@H§.§[!W§(this);
         }
         this.§]"E§ = true;
         §&2§.resume();
         mClip.dispatchEvent(new §1"@§(§1"@§.§+2§,this));
      }
      
      public function get §]!i§() : int
      {
         return this.§7"A§;
      }
      
      public function set §]!i§(param1:int) : void
      {
         this.§7"A§ = param1;
      }
   }
}
