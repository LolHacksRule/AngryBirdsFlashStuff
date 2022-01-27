package §^e§
{
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   
   public class §%!b§ extends §'"5§
   {
       
      
      private var §#!v§:§0"1§;
      
      private var §#"'§:String;
      
      public function §%!b§(param1:String, param2:§0"1§, param3:Number)
      {
         super(param3);
         this.§#"'§ = param1;
         this.§#!v§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §>b§.§+!?§(this.§#"'§,this.§#!v§,_loc2_);
      }
   }
}
