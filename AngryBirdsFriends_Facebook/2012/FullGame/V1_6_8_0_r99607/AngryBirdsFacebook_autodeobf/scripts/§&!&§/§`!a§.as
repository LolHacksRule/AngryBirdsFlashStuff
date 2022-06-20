package §&!&§
{
   import §"",§.§`W§;
   import §1o§.§'8§;
   import §1o§.§,!c§;
   import §<m§.§,0§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §`!a§ extends §,0§
   {
       
      
      private var §'=§:§`W§;
      
      private var §`"&§:MovieClip;
      
      private var § !?§:§,!c§;
      
      public function §`!a§()
      {
         super();
         var _loc1_:Class = §#!J§.§1!Y§("FriendSelecterCheckbox");
         this.§`"&§ = new _loc1_();
         this.§'=§ = new §`W§(this.§`"&§,true);
         this.§'=§.§3=§.addEventListener(Event.CHANGE,this.§`! §);
         addChild(this.§'=§.§3=§);
      }
      
      private function §`! §(param1:Event) : void
      {
         if(§ 9§)
         {
            § 9§.selected = this.§'=§.selected;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         cacheAsBitmap = true;
         if(this.§ !?§)
         {
            if(this.§`"&§.contains(this.§ !?§))
            {
               this.§`"&§.removeChild(this.§ !?§);
            }
            this.§ !?§.dispose();
         }
         this.§`"&§.PlayernameTextfield.text = "";
         this.§'=§.§3=§.visible = false;
         if(param1 == null)
         {
            return;
         }
         § 9§ = param1;
         this.§`"&§.PlayernameTextfield.text = param1.name;
         this.§'=§.selected = param1.selected;
         this.§'=§.§3=§.visible = true;
         this.§ !?§ = new §,!c§(param1.id,"",false,§'8§.§"!Y§);
         if(this.§ !?§.§]!@§)
         {
            this.§ !?§.x = 41;
            this.§ !?§.y = 7;
            this.§ !?§.width = 50;
            this.§ !?§.height = 50;
         }
         else
         {
            this.§ !?§.x = 41;
            this.§ !?§.y = 7;
            this.§ !?§.width = 35;
            this.§ !?§.height = 35;
         }
         this.§`"&§.addChild(this.§ !?§);
      }
   }
}
