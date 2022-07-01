package §-!@§
{
   import §2I§.§,"+§;
   import §2I§.ColorFadeLayerEvent;
   import §5!8§.§`""§;
   import §7"1§.§%W§;
   import §@">§.§%!u§;
   import §^x§.§3!r§;
   
   public class Popup extends §`""§
   {
      
      public static const §">§:int = 0;
      
      public static const §'!c§:int = 1;
      
      public static const §%!l§:int = 2;
       
      
      protected const §7Q§:Number = 0.25;
      
      protected var §1!<§:§,"+§;
      
      protected var §&?§:§%!u§;
      
      protected var §@"1§:Boolean = false;
      
      protected var §^"2§:Number = 0.7;
      
      private var §+"2§:int = 0;
      
      private var §[";§:Boolean = false;
      
      public function Popup(param1:XML, param2:§%!u§)
      {
         super(param1,param2.container);
         this.§1!<§ = new §,"+§(0,0,0,0);
         param2.container.§`!Y§(this);
         this.§&?§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§[";§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         §%W§.pause();
         this.§[";§ = true;
         mClip.addChildAt(this.§1!<§,0);
         if(param1)
         {
            this.§1!<§.§%r§(this.§^"2§,this.§7Q§);
         }
         else
         {
            this.§1!<§.§3!W§(this.§^"2§);
         }
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         if(!param1 || this.§1!<§ == null)
         {
            this.close();
            return;
         }
         this.§1!<§.§%r§(0,this.§7Q§);
         this.§1!<§.addEventListener(ColorFadeLayerEvent.§;!x§,this.§0!z§);
      }
      
      protected function §0!z§(param1:ColorFadeLayerEvent) : void
      {
         this.close();
      }
      
      override public function close() : void
      {
         this.§[";§ = false;
         if(this.§@"1§)
         {
            return;
         }
         if(this.§1!<§)
         {
            this.§1!<§.removeEventListener(ColorFadeLayerEvent.§;!x§,this.§0!z§);
            mClip.removeChild(this.§1!<§);
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
         var _loc1_:§3!r§ = this.§&?§.getItemByName("Container_Popup");
         if(this.§&?§.container)
         {
            this.§&?§.container.removeComponent(this);
         }
         this.§@"1§ = true;
         §%W§.resume();
         mClip.dispatchEvent(new §3Q§(§3Q§.§#!B§,this));
      }
      
      public function get §`!2§() : int
      {
         return this.§+"2§;
      }
      
      public function set §`!2§(param1:int) : void
      {
         this.§+"2§ = param1;
      }
   }
}
