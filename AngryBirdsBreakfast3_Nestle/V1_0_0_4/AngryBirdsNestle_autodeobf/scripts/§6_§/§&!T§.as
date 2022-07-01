package §6_§
{
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   
   public class §&!T§ extends §#i§
   {
       
      
      private var §'+§:§,!>§;
      
      private var §+!!§:String;
      
      public function §&!T§(param1:String, param2:§,!>§, param3:Number)
      {
         super(param3);
         this.§+!!§ = param1;
         this.§'+§ = param2;
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
         return §8!K§.§&$§(this.§+!!§,this.§'+§,_loc2_);
      }
   }
}
