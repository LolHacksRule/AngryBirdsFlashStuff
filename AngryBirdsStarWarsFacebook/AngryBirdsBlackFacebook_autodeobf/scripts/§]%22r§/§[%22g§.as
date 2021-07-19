package §]"r§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§8"?§;
   import §1"b§.§>l§;
   import com.furusystems.dconsole2.core.style.§`D§;
   import flash.display.Shape;
   
   public class §["g§ extends Shape implements §8"?§
   {
      
      public static const TOP:int = 0;
      
      public static const §var §:int = 1;
       
      
      public function §["g§()
      {
         super();
         §>l§.§^#0§(this,§""A§.§7" §,§""A§.§<Y§);
         visible = false;
      }
      
      public function resize() : void
      {
         graphics.clear();
         graphics.lineStyle(3,§`D§.§1"e§);
         graphics.lineTo(stage.stageWidth,0);
      }
      
      public function show(param1:int) : void
      {
         switch(param1)
         {
            case TOP:
               y = 0;
               break;
            case §var §:
               y = stage.stageHeight - 1;
         }
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §4"U§(param1:§7",§) : void
      {
         switch(param1.message)
         {
            case §""A§.§7" §:
               this.show(param1.data as int);
               break;
            case §""A§.§<Y§:
               this.hide();
         }
      }
   }
}
