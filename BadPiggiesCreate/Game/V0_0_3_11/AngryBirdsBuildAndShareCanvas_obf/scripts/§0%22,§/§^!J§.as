package §0",§
{
   import §1z§.Quest;
   import §2!5§.§0!X§;
   import §9!l§.§@O§;
   import §;!A§.§2v§;
   import §@!P§.§,"5§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §^!J§ extends Sprite
   {
       
      
      private var §2!b§:§,"5§;
      
      private var §?!L§:§,"5§;
      
      private var §=>§:§2w§;
      
      private var §^!+§:§[!&§;
      
      private var §=u§:§[!&§;
      
      private var §<!h§:§[!&§;
      
      public function §^!J§(param1:§,"5§, param2:§,"5§)
      {
         super();
         this.§2!b§ = param1;
         this.§?!L§ = param2;
         this.§=>§ = new §2w§(this.§2!b§,this.§?!L§);
         this.§^!+§ = new §[!&§(this.§2!b§);
         addChild(this.§=>§);
         addChild(this.§^!+§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§2v§ = null;
         _loc2_ = (!§0!X§.§if §.§ 5§.§6!z§() || §0!X§.§if §.§ 5§.§0x§().indexOf(this.§2!b§.object) == -1) && this.§2!b§.visible && §0!X§.§if §.§2s§.§?!N§ != Quest.§;E§ && §0!X§.§if §.§2s§.§?!N§ != Quest.§0!_§;
         this.§=>§.visible = _loc2_;
         this.§^!+§.visible = _loc2_;
         if(!_loc2_ && this.§2!b§.object is §@O§)
         {
            if(parent)
            {
               _loc3_ = §0!X§.§if §.§!e§.§<8§().§2!?§().§4d§(this.§2!b§.object as §@O§);
               if(this.§<!h§ && this.§<!h§.object.object != _loc3_)
               {
                  removeChild(this.§<!h§);
                  this.§<!h§ = null;
               }
               if(this.§<!h§ == null)
               {
                  this.§<!h§ = new §[!&§(new §,"5§(_loc3_));
                  addChild(this.§<!h§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§<!h§ && parent)
         {
            removeChild(this.§<!h§);
            this.§<!h§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §,"5§
      {
         return this.§2!b§;
      }
      
      public function get end() : §,"5§
      {
         return this.§?!L§;
      }
   }
}
